<?php

declare(strict_types=1);

namespace App\Entity;

use Doctrine\ORM\Mapping as ORM;
use Sulu\Component\Persistence\Model\AuditableInterface;
use Sulu\Component\Persistence\Model\AuditableTrait;

/**
 * @ORM\Entity(repositoryClass="App\Repository\EquipementTranslationRepository")
 */
class EquipementTranslation implements AuditableInterface
{
    use AuditableTrait;

    /**
     * @var int|null
     *
     * @ORM\Id()
     * @ORM\GeneratedValue()
     * @ORM\Column(type="integer")
     */
    private $id;

    /**
     * @var Equipement
     *
     * @ORM\ManyToOne(targetEntity="App\Entity\Equipement", inversedBy="translations")
     * @ORM\JoinColumn(nullable=false)
     */
    private $equipement;

    /**
     * @var string
     *
     * @ORM\Column(type="string", length=5)
     */
    private $locale;

    /**
     * @var string|null
     *
     * @ORM\Column(type="string", length=255, nullable=true)
     */
    private $title;

    /**
     * @var string|null
     *
     * @ORM\Column(type="text", nullable=true)
     */
    private $description;

    public function __construct(Equipement $equipement, string $locale)
    {
        $this->equipement = $equipement;
        $this->locale = $locale;
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getEquipement(): Equipement
    {
        return $this->equipement;
    }

    public function getLocale(): string
    {
        return $this->locale;
    }

    public function getTitle(): ?string
    {
        return $this->title;
    }

    public function setTitle(?string $title): self
    {
        $this->title = $title;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): self
    {
        $this->description = $description;

        return $this;
    }
}