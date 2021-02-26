<?php

namespace App\Models;

use HasFactory;
use Illuminate\Database\Eloquent\Model;

class Project extends Model
{
    protected $table = 'projects';
    public $timestamps = true;

    protected $casts = [
        'cost' => 'float'
    ];

    protected $fillable = [
        'name',
        'introduction',
        'created_at',
        'location',
        'cost'
    ];
}