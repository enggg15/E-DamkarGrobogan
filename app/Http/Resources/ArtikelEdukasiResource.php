<?php

namespace App\Http\Resources;

use Illuminate\Http\Request;
use Illuminate\Http\Resources\Json\JsonResource;

class ArtikelEdukasiResource extends JsonResource
{
    /**
     * Transform the resource into an array.
     *
     * @return array<string, mixed>
     */
    public function toArray(Request $request): array
    {
        return [
            "jenis_artikel" => "edukasi",
            "id" => $this->id_edukasi,
            "admin_damkar" => $this->adminDamkar->nama_lengkap,
            "foto" => $this->foto_artikel_berita,
            "judul" => $this->judul_edukasi,
            "deskripsi" => $this->deskripsi,
            "tanggal" => $this->tgl_edukasi
        ];
    }
}
