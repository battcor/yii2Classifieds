<?php
return [
    'createPost' => [
        'type' => 2,
        'description' => 'Create a post',
    ],
    'updatePost' => [
        'type' => 2,
        'description' => 'Update post',
    ],
    'deletePost' => [
        'type' => 2,
        'description' => 'Delete post',
    ],
    'updateOwnPost' => [
        'type' => 2,
        'description' => 'Update own post',
        'ruleName' => 'isAuthor',
        'children' => [
            'updatePost',
        ],
    ],
    'deleteOwnPost' => [
        'type' => 2,
        'description' => 'Delete own post',
        'ruleName' => 'isAuthor',
        'children' => [
            'deletePost',
        ],
    ],
    'author' => [
        'type' => 1,
        'children' => [
            'createPost',
            'updateOwnPost',
            'deleteOwnPost',
        ],
    ],
    'admin' => [
        'type' => 1,
        'children' => [
            'updatePost',
            'deletePost',
            'author',
        ],
    ],
];
