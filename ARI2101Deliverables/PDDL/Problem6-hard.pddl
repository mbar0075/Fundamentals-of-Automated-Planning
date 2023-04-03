(define (problem Problem6)
    (:domain SlidingTilePuzzle)
    
    (:objects
        tile-loc_1 tile-loc_2 tile-loc_3 tile-loc_4 tile-loc_5 tile-loc_6 tile-loc_7 tile-loc_8 tile-loc_9 - tile_location
        t_1 t_2 t_3 t_4 t_5 t_6 t_7 t_8 - tile
    )
    
    (:init
        (tile-at t_6 tile-loc_1)
        (tile-at t_4 tile-loc_2)
        (tile-at t_7 tile-loc_3)
        (tile-at t_8 tile-loc_4)
        (tile-at t_5 tile-loc_5)
        (is-empty tile-loc_6)
        (tile-at t_3 tile-loc_7)
        (tile-at t_2 tile-loc_8)
        (tile-at t_1 tile-loc_9)
    
        (to-right tile-loc_1 tile-loc_2)
        (to-right tile-loc_2 tile-loc_3)
        (to-right tile-loc_4 tile-loc_5)
        (to-right tile-loc_5 tile-loc_6)
        (to-right tile-loc_7 tile-loc_8)
        (to-right tile-loc_8 tile-loc_9)
        
        (to-left tile-loc_3 tile-loc_2)
        (to-left tile-loc_2 tile-loc_1)
        (to-left tile-loc_6 tile-loc_5)
        (to-left tile-loc_5 tile-loc_4)
        (to-left tile-loc_9 tile-loc_8)
        (to-left tile-loc_8 tile-loc_7)
        
        (to-up tile-loc_4 tile-loc_1)
        (to-up tile-loc_5 tile-loc_2)
        (to-up tile-loc_6 tile-loc_3)
        (to-up tile-loc_7 tile-loc_4)
        (to-up tile-loc_8 tile-loc_5)
        (to-up tile-loc_9 tile-loc_6)
        
        (to-down tile-loc_1 tile-loc_4)
        (to-down tile-loc_2 tile-loc_5)
        (to-down tile-loc_3 tile-loc_6)
        (to-down tile-loc_4 tile-loc_7)
        (to-down tile-loc_5 tile-loc_8)
        (to-down tile-loc_6 tile-loc_9)
    )
    
    (:goal (and
            (tile-at t_1 tile-loc_1)
            (tile-at t_2 tile-loc_2)
            (tile-at t_3 tile-loc_3)
            (tile-at t_4 tile-loc_4)
            (tile-at t_5 tile-loc_5)
            (tile-at t_6 tile-loc_6)
            (tile-at t_7 tile-loc_7)
            (tile-at t_8 tile-loc_8)
            (is-empty tile-loc_9)
        )
    )
)