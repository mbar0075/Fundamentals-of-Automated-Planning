(define (domain SlidingTilePuzzle)
    (:requirements :typing)
    
    (:types
        tile tile_location - object ;tile is the location in the grid / v_n is the nth value i.e v_1 = 1
    )
    
    (:predicates
        (tile-at ?t - tile ?tl - tile_location) ;checks if a tile has a value
        
        (to-left ?current-tile ?left-tile - tile_location) ;denotes the tile to the left of the current tile
        (to-right ?current-tile ?right-tile - tile_location) ;denotes the tile to the right of the current tile
        (to-up ?current-tile ?up-tile - tile_location) ;denotes the tile above of the current tile
        (to-down ?current-tile ?down-tile - tile_location) ;denotes the tile below of the current tile
        
        (is-empty ?tl - tile_location) ;checks if a tile is empty
    )

    (:action SLIDE-LEFT
        :parameters (?current-tile - tile_location ?tile - tile ?left-tile - tile_location)
        :precondition (and
            (tile-at ?tile ?current-tile)
            
            (is-empty ?left-tile)
            (not (is-empty ?current-tile))
            
            (to-left ?current-tile ?left-tile)
            (to-right ?left-tile ?current-tile)
        )
        :effect (and
            (not (tile-at ?tile ?current-tile))
            (not (is-empty ?left-tile))
            (tile-at ?tile ?left-tile)
            (is-empty ?current-tile)
        )
    )
    
    (:action SLIDE-RIGHT
        :parameters (?current-tile - tile_location ?tile - tile ?right-tile - tile_location)
        :precondition (and
            (tile-at ?tile ?current-tile)
            
            (is-empty ?right-tile)
            (not (is-empty ?current-tile))
            
            (to-right ?current-tile ?right-tile)
            (to-left ?right-tile ?current-tile)
        )
        :effect (and
            (not (tile-at ?tile ?current-tile))
            (not (is-empty ?right-tile))
            (tile-at ?tile ?right-tile)
            (is-empty ?current-tile)
        )
    )
    
    (:action SLIDE-UP
        :parameters (?current-tile - tile_location ?tile - tile ?up-tile - tile_location)
        :precondition (and
            (tile-at ?tile ?current-tile)
            
            (is-empty ?up-tile)
            (not (is-empty ?current-tile))
            
            (to-up ?current-tile ?up-tile)
            (to-down ?up-tile ?current-tile)
        )
        :effect (and
            (not (tile-at ?tile ?current-tile))
            (not (is-empty ?up-tile))
            (tile-at ?tile ?up-tile)
            (is-empty ?current-tile)
        )
    )
    
    (:action SLIDE-DOWN
        :parameters (?current-tile - tile_location ?tile - tile ?down-tile - tile_location)
        :precondition (and
            (tile-at ?tile ?current-tile)
            
            (is-empty ?down-tile)
            (not (is-empty ?current-tile))
            
            (to-down ?current-tile ?down-tile)
            (to-up ?down-tile ?current-tile)
        )
        :effect (and
            (not (tile-at ?tile ?current-tile))
            (not (is-empty ?down-tile))
            (tile-at ?tile ?down-tile)
            (is-empty ?current-tile)
        )
    )
)