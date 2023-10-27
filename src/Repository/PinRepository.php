<?php

namespace App\Repository;

use App\Entity\Pin;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

use Knp\Component\Pager\Pagination\PaginationInterface;
use App\Model\SearchData;

/**
 * @extends ServiceEntityRepository<Pin>
 *
 * @method Pin|null find($id, $lockMode = null, $lockVersion = null)
 * @method Pin|null findOneBy(array $criteria, array $orderBy = null)
 * @method Pin[]    findAll()
 * @method Pin[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class PinRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Pin::class);
    }

    public function save(Pin $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(Pin $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    //    /**
    //     * @return Pin[] Returns an array of Pin objects
    //     */
    //    public function findByExampleField($value): array
    //    {
    //        return $this->createQueryBuilder('p')
    //            ->andWhere('p.exampleField = :val')
    //            ->setParameter('val', $value)
    //            ->orderBy('p.id', 'ASC')
    //            ->setMaxResults(10)
    //            ->getQuery()
    //            ->getResult()
    //        ;
    //    }


    public function paginationQuery()
    {
        return $this->createQueryBuilder('p')
            ->orderBy('p.id', 'ASC')
            ->getQuery();
    }

    public function findBySearch(SearchData $searchData)
    {
        $data = $this->createQueryBuilder('p')
            ->addOrderBy('p.createdAt', 'DESC');
        if (!empty($searchData->query)) {
            $data = $data
                ->andWhere('p.title LIKE :query')
                //Si on veut rajouter aussi la recherche dans description
                ->orWhere('p.description LIKE :query')
                ->setParameter('query', "%{$searchData->query}%");
        }
        return $data
            ->getQuery();
        // ->getResult();

    }

    public function findBySearch2(SearchData $searchData)
    {
        $data = $this->createQueryBuilder('p')
            ->addOrderBy('p.createdAt', 'DESC');
        if (!empty($searchData->query)) {
            $data = $data
                ->andWhere('p.title LIKE :query')
                //Si on veut rajouter aussi la recherche dans description
                ->orWhere('p.description LIKE :query')
                ->setParameter('query', "%{$searchData->query}%");
        }
        return $data
            ->getQuery()
            ->getResult();
    }

    //    public function findOneBySomeField($value): ?Pin
    //    {
    //        return $this->createQueryBuilder('p')
    //            ->andWhere('p.exampleField = :val')
    //            ->setParameter('val', $value)
    //            ->getQuery()
    //            ->getOneOrNullResult()
    //        ;
    //    }
}
