with event_source as (

    select * from {{ ref('cwevent_raw') }}

)
, result_lkup as (

    select * from {{ ref('event_result_lk') }}

)
, base_state_lkup as (

    select * from {{ ref('base_state_lk') }}

)
, renamed as (
	SELECT
			game_id
			,away_team_id
			,home_team_id
			,inn_ct inn
			,bat_home_id inn_half
			,inn_pa_ct + 1 pa_in_inn
			,balls_ct balls
			,strikes_ct strikes
			,outs_ct outs
			,home_score_ct home_score
			,away_score_ct away_score
			,resp_bat_id batter_id
			,res_pit_id pitcher_id
			,event_result result
			,event_cd result_id
			,event_outs_ct result_outs
			,event_runs_ct result_runs
			,bspre.base_state base_state_start
			,bspost.base_state base_state_end
			,battedball_cd trajectory
		FROM
			event_source ev
			left join result_lkup res
				on res.event_result_lk = ev.event_cd
			left join base_state_lkup bspre
				on bspre.base_state_lk = ev.start_bases_cd
			left join base_state_lk bspost
				on bspost.base_state_lk = ev.end_bases_cd
)
SELECT * FROM renamed