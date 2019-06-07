

# Aggregation

So you have coded multiple fragments of causal information. The app *can* put them together into a combined network with no aggregation at all -- one line for each causal link etc -- but usually this will need simplifying. 

Only a very few stakeholders will actually want or be able to explore all of this information: the central product needs to be a one-page graphic which can be understood with a couple of minute's viewing, perhaps with appendices showing additional information. And even those who have the time and interest will want to start at a certain level of aggregation.

How are we going to aggregate a network? 

The app starts its aggregation looking at these three tables:

### Table of Statements

This has not only the texts of the actual statements but also optionally user-defined attributes like source ID, gender, district, question number, whatever columns were in the data which was imported at the beginning of the project. Also, if a column has a special name like `Age.District.Sex` and contains values like`22.North.M` it will be split into separate attributes, say, Age = 22, District = North, Sex = M. 

### Table of Variables

This table has label and ID, level, cluster, value (in the sense of valence/importance/valued-ness, not level), fun (see below) and any user-defined attributes.

### Table of Arrows

This table has label and ID, the full text of the statement upon which it is based, any more specific quote, level, cluster, value (in the sense of valence/importance/valued-ness, not level), fun (see below) and any user-defined attributes.


At the moment, the app now carries out the following steps, in this order. I'd thought that this process would have to be completely user-defined, but in fact at least part of this ordering is inevitable. So the order of the steps is hard-coded but the user can switch the steps on or off, and tweak them as described by fiddling with the settings in the `Display` tab in the app.


## Inference

*If infer is set to T or TRUE*: Calculate the levels of downstream variables given the levels of upstream variables. This means that for each variable, the app has to know how to combine the upstream information. That is what is stored in the `fun` (i.e., "function")attribute of each variable, e.g. `AND` and `OR`. Default is `SAME`. (TODO: also take account of the strength of the incoming influences and the expected value of the downstream variable). The `fun` attribute can be set manually in the Arrows table or in some cases by using the "Interaction" widget in the Coding tab.

(explain about how a Bayesian grid is constructed to cope with missing exogenous variables)

(explain possibility of upstream i.e. Bayesian inference from evidence to hypothesis)

## Merging together variables which are in the same cluster

I think clustering is the most important way in which the researcher simplifies a causal map, and the app needs to help them with it. 

*If `variablemerge` is set to TRUE*: Any variables which have the same letter or string ("A", "4", "Cluster1" or whatever) in the `Cluster` column are merged into one. Any arrows to the component variables are re-routed to this new cluster variable, TODO: how are variable attributes like `valence`  aggregated?. 

By default, the variables in the cluster are still stored separately and are combined "live" each time the visualisation is refreshed. But there is also a button to combine them permanently, i.e. the information about the separate variables is lost for ever (though the step taken should be stored in the project log TODO).

(TODO: take into account when links between variables have been specified as "definitional" or "conceptual"; these are good candidates for clustering)

(TODO: finalise algorithm which auto-suggests sensible clustering)

(TODO: ensure that clusters appear in the automatic filters, see below)

## Merge information about Statements into the arrows which are based on them

This happens automatically. So an arrow "knows" all the attribute information from the Statements tab which belongs to this statement, e.g. Source ID.


## Filter sources

If there are any such attributes in the Statements tab e.g. Source ID, gender, then filter buttons appear in the Display tab which allow the user to exclude specific categories e.g. women, people from District X, etc. The app then excludes all arrows which are encoded from any sources with that category. This functionality is intended for live exploration of the diagram and the settings of the filter buttons is not stored when the project is saved.


## Hard-coded calculations

Hard-coded calculations for the arrows combining the attributes. At the moment, only `wtrust` = `strength` weighted by `trust`. (TODO: allow user-defined calculations)

## Merge arrows

*If `arrowmerge` is set to TRUE:* All arrows connecting the same pair of variables are merged into one arrow. The attribute `frequency` i.e. count of the number of arrows is added automatically to the new combined arrow. Other attributes (strength, trust, sensitivity, source, label, etc) are aggregated too (at the moment only sum and mean are calculated, but TODO the app should calculate live any aggregations required by the user for the visualisation e.g. max, min, user-defined functions etc).  

## Filter out arrows below a minimum frequency

*If `arrowminimumfrequency`* is larger than 0, any arrows with frequency below this threshold will be excluded from now on.


## Add arrow attributes to variables

*If `variablejoinedges` is `TRUE`*: The attributes of arrows to and from a variable are added to it. So for example the variable now "knows" how many women mentioned it as the target of a causal claim. This is an important feature of the app and really useful for the final visualisation. This involves two stages of aggregation: first functions like e.g. mean and sum are used to aggregate the different arrows coming into (`to`) or going out from (`from`) a given variable, and secondly a function is used to aggregate the `from` and `to` information. This means that at this stage, a variable can potentially have information like mean_age_mean_mean, i.e., working backwards, take the mean of the arrows merged in step 5 above, then the mean of arrows from several variables linking from or to this one, then the mean of this `from` and `to` information. Also available are a host of attributes like from_age_mean_sum and so on. It's quite bewildering!



## Filter out variables below a minimum frequency

*If `variableminimumfrequency`* is larger than 0, any variables with frequency below this threshold will be excluded. 

Now the aggregation has been completed; the next step is how to use it in the visualisation.










