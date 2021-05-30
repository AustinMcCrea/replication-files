*Replication files for:
*McCrea, Austin M. "Can Administrative Capacity Address Wicked Problems? Evidence From the Frontlines of the American Opioid Crisis." Administration & Society 52, no. 7 (2020): 983-1008.
			

		
	global controls1 admincapacity_v3 health_actors pres_rate dr_per_capita median_income diversity2 unemp_rate uninsured_rate population_logged
	
	*Model 1
		reg opiate_rate $controls1, robust 
	*Model 2
		reg opiate_rate $controls1 prior_rate, robust 
	*Model 3
		sureg (fentanyl_rate $controls1 prior_rate) (heroin_rate $controls1 prior_rate) (presdeath_rate $controls1 prior_rate), corr 		
