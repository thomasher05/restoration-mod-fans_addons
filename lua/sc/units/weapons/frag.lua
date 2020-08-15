function FragGrenade:bullet_hit()
--yay
end

Hooks:PostHook(FragGrenade, "_detonate" , "ResClusterGrenade" , function(self, tag, unit, body, other_unit, other_body, position, normal, collision_velocity, velocity, other_velocity, new_velocity, direction, damage, ...)
	local grenade_tweak = tweak_data.projectiles[self._tweak_projectile_entry]
	if grenade_tweak and grenade_tweak.cluster then
		for i=1, grenade_tweak.cluster_count or 1 do
			ProjectileBase.throw_projectile(grenade_tweak.cluster, self._unit:position(), Vector3(math.random(-1, 1), math.random(-1, 1), 0.3), nil, self:thrower_unit() or self._unit, true)
		end
	end
end)