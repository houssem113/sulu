<?php

declare(strict_types=1);

namespace App\Content\Type;

use App\Entity\Equipement;
use App\Repository\EquipementRepository;
use Sulu\Component\Content\Compat\PropertyInterface;
use Sulu\Component\Content\SimpleContentType;

class SingleEquipementSelection extends SimpleContentType
{
    /**
     * @var EquipementRepository
     */
    protected $repository;

    public function __construct(EquipementRepository $repository)
    {
        $this->repository = $repository;

        parent::__construct('single_equipement_selection', null);
    }

    public function getContentData(PropertyInterface $property): ?Equipement
    {
        $id = $property->getValue();

        if (empty($id)) {
            return null;
        }

        return $this->repository->find($id);
    }

    /**
     * @return array<string, int|null>
     */
    public function getViewData(PropertyInterface $property): array
    {
        return [
            'id' => $property->getValue(),
        ];
    }
}