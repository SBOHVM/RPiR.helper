timestep_deterministic_growth <- function(latest, growth.rate, timestep) {
  # Modified rate
  effective.growth.rate <- growth.rate * timestep

  growth.num <- latest$count * effective.growth.rate

  next.count <- latest$count + growth.num
  next.time <- latest$time + timestep

  new.population <- data.frame(time=next.time, count=next.count)

  list(updated.pop=new.population,
       end.experiment=(next.count == 0))
}

timestep_deterministic_SIS <- function(latest, transmission.rate, recovery.rate, timestep) {
  # The total population can be calculated from the various columns of the dataframe
  total.pop <- latest$susceptibles + latest$infecteds

  # Modified rates
  effective.recovery.rate <- recovery.rate * timestep
  effective.transmission.rate <- transmission.rate * timestep

  new.susceptibles <- latest$infecteds * effective.recovery.rate
  new.infecteds <- latest$susceptibles * effective.transmission.rate *
    latest$infecteds / total.pop

  next.susceptibles <- latest$susceptibles + new.susceptibles - new.infecteds
  next.infecteds <- latest$infecteds - new.susceptibles + new.infecteds
  next.time <- latest$time + timestep

  next.population <- data.frame(time = next.time,
                                susceptibles = next.susceptibles,
                                infecteds = next.infecteds)

  list(updated.pop = next.population,
       end.experiment = (next.population$infecteds == 0))
}
