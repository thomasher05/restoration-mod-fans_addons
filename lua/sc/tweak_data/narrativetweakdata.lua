Hooks:PostHook( NarrativeTweakData, "init", "SC_Narratives", function(self)
	self.tutorials = {
		{job = "safehouse"},
		{job = "short1"},
		{job = "short2"}
	}

	--how the fuck does this wanna be set up
	--self.jobs.man.contract_visuals.preview_image = {icon = "guis/textures/restoration/cni/secret_stash"}
	self.jobs.mex.jc = 60
	self.jobs.mex_cooking.jc = 60
	
	--Golden Grin Casino
	self.jobs.kenaz.payout = {			
		250000,
		300000,
		450000,
		550000,
		850000,
		850000,
		850000
		}
	self.jobs.kenaz.contract_cost = {			
		54000,
		108000,
		270000,
		540000,
		700000,
		700000,
		700000
		}
	
	--Black Cat
	self.jobs.chca.payout = {			
		100000,
		200000,
		500000,
		1000000,
		1300000,
		1300000,
		1300000
	}
	self.jobs.chca.contract_cost = {
		105000,
		150000,
		550000,
		800000,
		1000000,
		1000000,
		1000000
	}	

	--Border Crystals (it's basically Cook Off but in Mexico)
	self.jobs.mex_cooking.payout = {			
		90000,
		135000,
		180000,
		310000,
		380000,
		380000,
		380000
	}
	self.jobs.mex_cooking.contract_cost = {
		47000,
		94000,
		235000,
		470000,
		600000,
		600000,
		600000
	}	
	

	--Border Crossing
	self.jobs.mex.payout = {			
		90000,
		135000,
		180000,
		310000,
		380000,
		380000,
		380000
	}
	self.jobs.mex.contract_cost = {
		47000,
		94000,
		235000,
		470000,
		600000,
		600000,
		600000
	}	

	--San Martin Bank
	self.jobs.bex.payout = {			
		60000,
		150000,
		300000,
		600000,
		750000,
		750000,
		750000
	}
	self.jobs.bex.contract_cost = {			
		54000,
		108000,
		270000,
		540000,
		700000,
		700000,
		700000
	}
	
	--Dragon Heist
	self.jobs.chas.payout = {			
		62500,
		100000,
		200000,
		250000,
		300000,
		300000,
		300000
	}
	self.jobs.chas.contract_cost = {			
		100000,
		200000,
		400000,
		600000,
		800000,
		800000,
		800000
	}
	
	--Vlad Breakout
	self.jobs.sand.payout = {			
		55000,
		100000,
		200000,
		400000,
		400000,
		400000,
		400000
	}
	self.jobs.sand.contract_cost = {			
		100000,
		200000,
		480000,
		650000,
		850000,
		850000,
		850000
	}
	
	--Mountain Master
	self.jobs.pent.payout = {			
		68000,
		100000,
		200000,
		400000,
		400000,
		400000,
		400000
	}
	self.jobs.pent.contract_cost = {			
		182000,
		308000,
		500000,
		600000,
		870000,
		870000,
		870000
	}
	
end)