<?php

namespace App\Repository;

use App\Entity\Equipement;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @method Equipement|null find($id, $lockMode = null, $lockVersion = null)
 * @method Equipement|null findOneBy(array $criteria, array $orderBy = null)
 * @method Equipement[]    findAll()
 * @method Equipement[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class EquipementRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, Equipement::class);
    }

    public function findById(int $id, string $locale): ?Equipement
    {
        $Equipement = $this->find($id);
        if (!$Equipement) {
            return null;
        }

        $Equipement->setLocale($locale);

        return $Equipement;
    }

    public function create(string $locale): Equipement
    {
        $Equipement = new Equipement();
        $Equipement->setLocale($locale);

        return $Equipement;
    }

    public function remove(int $id): void
    {
        /** @var object $Equipement */
        $Equipement = $this->getEntityManager()->getReference(
            $this->getClassName(),
            $id
        );

        $this->getEntityManager()->remove($Equipement);
        $this->getEntityManager()->flush();
    }
    
    public function save(Equipement $Equipement): void
    {
        $this->getEntityManager()->persist($Equipement);
        $this->getEntityManager()->flush();
    }

    public function findAllByLocal(String $locale)
    {
        $qb = $this->createQueryBuilder('c')
        ->select('t.title, c.id')
        ->join('c.translations', 't')
        ->andWhere('t.locale = :val')
        ->setParameter('val', $locale)
        ;
        $query = $qb->getQuery();
        return $query->getResult();
    }

    public function findIdOfTitle(String $title)
    {
        $qb = $this->createQueryBuilder('c')
        ->select('c.id')
        ->join('c.translations', 't')
        ->andWhere('t.title = :val')
        ->setParameter('val', $title)
        ->setMaxResults(1)
        ;
        $query = $qb->getQuery();
        return $query->getSingleColumnResult();
    }

    public function findTranslable(Int $id, String $locale)
    {
        $qb = $this->createQueryBuilder('c')
        ->select('t.title, c.id')
        ->join('c.translations', 't')
        ->andWhere('c.id = :val')
        ->andWhere('t.locale = :val1')
        ->setParameter('val', $id)
        ->setParameter('val1', $locale)
        ->setMaxResults(1)
        ;
        $query = $qb->getQuery();
        return $query->getSingleColumnResult();
    }
}
