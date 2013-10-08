function [ ss_roc ] = do_skil_score_roc_plot(hit_rate,false_alarm_rate,Namelist,model,domaine)
%DO_SKIL_SCORE_ROC_PLOT Summary of this function goes here
%   Detailed explanation goes here

%compute area under roc diagram 
area_lead_time=0
[m n]=size(hit_rate)
;Namelist{4}.nwp_model_domain=domaine;Namelist{4}.nwp_model{1}=model
[ analogs_lead_times ] = get_analog_lead_times( Namelist );
   
for j=analogs_lead_times
    area_lead_time(j)=0;        
    for i=1:n-1
        new_area=0.5*(hit_rate(j,i)+hit_rate(j,i+1))*(false_alarm_rate(j,i)-false_alarm_rate(j,i+1))
        area_lead_time(j)=area_lead_time(j)+new_area
    end
end
ss_roc=2*area_lead_time-1;

end
