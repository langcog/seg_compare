% fits intercept but retains sign of original

function fitted = icept_fit(to_fit,data)

range = max(to_fit) - min(to_fit);
data_range = max(data) - min(data);

icept = nanmean(data);
fitted = (to_fit - nanmean(to_fit)) + icept;




