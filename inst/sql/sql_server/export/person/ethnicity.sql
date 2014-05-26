select c1.concept_id as ConceptId, 
  c1.concept_name as ConceptName, 
	ar1.count_value as CountValue
from ACHILLES_results ar1
	inner join
	@cdmSchema.dbo.concept c1
	on CAST(ar1.stratum_1 AS INT) = c1.concept_id
where ar1.analysis_id = 5
