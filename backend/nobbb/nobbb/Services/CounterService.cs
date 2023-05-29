using Grpc.Core;
using Nobbb;

public class CounterService1 : CounterService.CounterServiceBase
{
    private int currentValue = 0;

    public override Task<CounterResponse> GetCounterValue(CounterRequest request, ServerCallContext context)
    {
        return Task.FromResult(new CounterResponse { CurrentValue = currentValue });
    }

    public override Task<CounterResponse> IncrementCounter(CounterRequest request, ServerCallContext context)
    {
        currentValue++;
        return Task.FromResult(new CounterResponse { CurrentValue = currentValue });
    }

    public override Task<CounterResponse> AddToCounter(CounterRequest request, ServerCallContext context)
    {
        if (int.TryParse(request.NumericalInput, out int input))
        {
            currentValue += input;
        }

        return Task.FromResult(new CounterResponse { CurrentValue = currentValue });
    }

    public override Task<CounterResponse> ClearCounter(CounterRequest request, ServerCallContext context)
    {
        currentValue = 0;
        return Task.FromResult(new CounterResponse { CurrentValue = currentValue });
    }
}
