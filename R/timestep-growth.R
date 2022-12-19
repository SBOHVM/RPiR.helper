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
