require 'spec_helper'

# <observation classCode="OBS" moodCode="EVN">
#   <!-- Result observation template -->
#   <templateId root="2.16.840.1.113883.10.20.22.4.2"/>
#   <id root="107c2dc0-67a5-11db-bd13-0800200c9a66"/>
#   <code code="30313-1"
# displayName="HGB"
# codeSystem="2.16.840.1.113883.6.1"
# codeSystemName="LOINC"/>
#   <statusCode code="completed"/>
#   <effectiveTime value="200003231430"/>
#   <value xsi:type="PQ" value="13.2" unit="g/dl"/>
#   <interpretationCode code="N" codeSystem="2.16.840.1.113883.5.83"/>
#   <methodCode/>
#   <targetSiteCode/>
#   <author>
#   <time/>
#   <assignedAuthor>
#   <id/>
#   </assignedAuthor>
# </author>
#   <referenceRange>
#   <observationRange>
#   <text>M 13-18 g/dl; F 12-16 g/dl</text>
# </observationRange>
#   </referenceRange>
# </observation>

describe "Building ResultObservation" do
  let(:result_observation) do
    Ccd::ResultObservation.new(result_observation_attributes)
  end

  let(:result_observation_attributes) do
    {
      code: {
        code: "30313-1",
        display_name: "HGB",
        code_system: "2.16.840.1.113883.6.1",
        code_system_name: "LOINC"
      },
      status_code: {
        code: "completed"
      },
      effective_time: {
        value: Time.now,
      },
      value: [{
        _type: "Cda::PQ",
        value: "13.2",
        unit: "g/dl"
        }],
      interpretation_code: [{
          code: "N",
          code_system: "2.16.840.1.113883.5.83"
        }]
    }
  end

  it "should build valid result observation" do
    ro = result_observation

    ro.should be_a(Ccd::ResultObservation)
    ro.value.first.value.should == 13.2
    ro.status_code.code.should == "completed"

    ro.class_code.should == 'OBS'
    ro.mood_code.should == 'EVN'
    ro.template_id.first.root.should == "2.16.840.1.113883.10.20.22.4.2"
  end
end
