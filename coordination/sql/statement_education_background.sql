select user_id,
       concat('[', group_concat(
               json_object('school_name', school_name,
                           'school_type', school_type,
                           'graduation_year', graduation_year,
                           'drop_flg', drop_flg)
           ), ']') as school
from education_background
group by user_id
