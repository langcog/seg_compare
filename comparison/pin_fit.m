% fits slope and intercept but retains sign of original

function fitted = pin_fit(to_fit,data)

range = max(to_fit) - min(to_fit) + eps;
data_range = max(data) - min(data);

slope = data_range / range;
icept = nanmean(data);
fitted = (to_fit - nanmean(to_fit)) .* slope;
fitted = fitted + icept;




