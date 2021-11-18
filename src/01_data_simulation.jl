########## 
##########
# Creation of data to test workflow 
##########
##########
# AUTHOR: Cole B. Brookson
# DATE OF CREATION: 2021-11-17
##########
##########

# set up =======================================================================

# functions to create species ==================================================

# pick 10 traits - 7 continuous, 3 categorical
# assign 100 prey species trait values randomly
# assign the predator "matching" foraging traits
# break them down into vulnerability traits and foraging traits






"""
    assign_trait_values(
        organism_type,
        organism_id)

Takes in the type of organism and it's unique id and uses the percentage of its
own body size as defined, to return a list of the various traits for that 
organism to be passed to the next list.

"""
function assign_trait_values(
    organism_type::String, 
    organism_id::Int,
    lower_prey_limit::Float64 = 0.05,
    upper_prey_limit::Float64 = 0.65
    )

    






    # determine producer or consumer
    if organism_type == "producer"
        # scale for producers should be 0.34 (Brose 2019 paper on body size)
        body_size = rand(Exponential(0.34), 1)
        # set prey limits - empty for producers
        prey_limits = Array([NaN, NaN])
    else # everything here down is for consumers
        # scale for consumers should be 800 (Brose 2019 paper on body size)
        body_size = rand(Exponential(20), 1)
        # set prey limits - empty for producers
        lower_limit = body_size*lower_prey_limit
        upper_limit = body_size*upper_prey_limit
        prey_limits = [lower_limit[1], upper_limit[1]]

    end
    # habitat values get set by same process for both consumers and producers
    
    # randomly select habitat midpoint 
    habitat_midpoint = round(rand(Uniform(0,1), 1)[1], digits = 3)
    # define vector of the midpoint and upper/lower habitat bounds
    habitat = [habitat_midpoint, 0, 0]
    if habitat_midpoint >= 0.4 # for lower bound
        habitat[2] = round((habitat_midpoint - 0.4), digits = 3)
    else
        habitat[2] = 0
    end
    if habitat_midpoint <= 0.6 # for upper bound 
        habitat[3] = round((habitat_midpoint + 0.4), digits = 2)
    else
        habitat[3] = 1
    end
    #nutritional value 
    nutritional_value = rand(Beta(5, 2))

    #habitat = [habitat_midpoint, 0, 1]
    trait_list = [organism_id, organism_type, round(body_size[1], digits = 2),
                    round(prey_limits[1], digits = 2), 
                    round(prey_limits[2], digits = 2), habitat[1], 
                    round(habitat[2], digits = 2), 
                    round(habitat[3], digits = 2), 
                    round(nutritional_value, digits = 2)]

    return trait_list
end