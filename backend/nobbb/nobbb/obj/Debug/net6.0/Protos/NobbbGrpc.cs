// <auto-generated>
//     Generated by the protocol buffer compiler.  DO NOT EDIT!
//     source: Protos/nobbb.proto
// </auto-generated>
#pragma warning disable 0414, 1591, 8981
#region Designer generated code

using grpc = global::Grpc.Core;

namespace Nobbb {
  public static partial class calcService
  {
    static readonly string __ServiceName = "nobbb.calcService";

    [global::System.CodeDom.Compiler.GeneratedCode("grpc_csharp_plugin", null)]
    static void __Helper_SerializeMessage(global::Google.Protobuf.IMessage message, grpc::SerializationContext context)
    {
      #if !GRPC_DISABLE_PROTOBUF_BUFFER_SERIALIZATION
      if (message is global::Google.Protobuf.IBufferMessage)
      {
        context.SetPayloadLength(message.CalculateSize());
        global::Google.Protobuf.MessageExtensions.WriteTo(message, context.GetBufferWriter());
        context.Complete();
        return;
      }
      #endif
      context.Complete(global::Google.Protobuf.MessageExtensions.ToByteArray(message));
    }

    [global::System.CodeDom.Compiler.GeneratedCode("grpc_csharp_plugin", null)]
    static class __Helper_MessageCache<T>
    {
      public static readonly bool IsBufferMessage = global::System.Reflection.IntrospectionExtensions.GetTypeInfo(typeof(global::Google.Protobuf.IBufferMessage)).IsAssignableFrom(typeof(T));
    }

    [global::System.CodeDom.Compiler.GeneratedCode("grpc_csharp_plugin", null)]
    static T __Helper_DeserializeMessage<T>(grpc::DeserializationContext context, global::Google.Protobuf.MessageParser<T> parser) where T : global::Google.Protobuf.IMessage<T>
    {
      #if !GRPC_DISABLE_PROTOBUF_BUFFER_SERIALIZATION
      if (__Helper_MessageCache<T>.IsBufferMessage)
      {
        return parser.ParseFrom(context.PayloadAsReadOnlySequence());
      }
      #endif
      return parser.ParseFrom(context.PayloadAsNewBuffer());
    }

    [global::System.CodeDom.Compiler.GeneratedCode("grpc_csharp_plugin", null)]
    static readonly grpc::Marshaller<global::Nobbb.Empty> __Marshaller_nobbb_Empty = grpc::Marshallers.Create(__Helper_SerializeMessage, context => __Helper_DeserializeMessage(context, global::Nobbb.Empty.Parser));
    [global::System.CodeDom.Compiler.GeneratedCode("grpc_csharp_plugin", null)]
    static readonly grpc::Marshaller<global::Nobbb.CurrentValue> __Marshaller_nobbb_CurrentValue = grpc::Marshallers.Create(__Helper_SerializeMessage, context => __Helper_DeserializeMessage(context, global::Nobbb.CurrentValue.Parser));
    [global::System.CodeDom.Compiler.GeneratedCode("grpc_csharp_plugin", null)]
    static readonly grpc::Marshaller<global::Nobbb.NumericalInput> __Marshaller_nobbb_NumericalInput = grpc::Marshallers.Create(__Helper_SerializeMessage, context => __Helper_DeserializeMessage(context, global::Nobbb.NumericalInput.Parser));

    [global::System.CodeDom.Compiler.GeneratedCode("grpc_csharp_plugin", null)]
    static readonly grpc::Method<global::Nobbb.Empty, global::Nobbb.CurrentValue> __Method_AddOne = new grpc::Method<global::Nobbb.Empty, global::Nobbb.CurrentValue>(
        grpc::MethodType.Unary,
        __ServiceName,
        "AddOne",
        __Marshaller_nobbb_Empty,
        __Marshaller_nobbb_CurrentValue);

    [global::System.CodeDom.Compiler.GeneratedCode("grpc_csharp_plugin", null)]
    static readonly grpc::Method<global::Nobbb.NumericalInput, global::Nobbb.CurrentValue> __Method_AddNumericalInput = new grpc::Method<global::Nobbb.NumericalInput, global::Nobbb.CurrentValue>(
        grpc::MethodType.Unary,
        __ServiceName,
        "AddNumericalInput",
        __Marshaller_nobbb_NumericalInput,
        __Marshaller_nobbb_CurrentValue);

    [global::System.CodeDom.Compiler.GeneratedCode("grpc_csharp_plugin", null)]
    static readonly grpc::Method<global::Nobbb.Empty, global::Nobbb.Empty> __Method_ClearAll = new grpc::Method<global::Nobbb.Empty, global::Nobbb.Empty>(
        grpc::MethodType.Unary,
        __ServiceName,
        "ClearAll",
        __Marshaller_nobbb_Empty,
        __Marshaller_nobbb_Empty);

    /// <summary>Service descriptor</summary>
    public static global::Google.Protobuf.Reflection.ServiceDescriptor Descriptor
    {
      get { return global::Nobbb.NobbbReflection.Descriptor.Services[0]; }
    }

    /// <summary>Base class for server-side implementations of calcService</summary>
    [grpc::BindServiceMethod(typeof(calcService), "BindService")]
    public abstract partial class calcServiceBase
    {
      [global::System.CodeDom.Compiler.GeneratedCode("grpc_csharp_plugin", null)]
      public virtual global::System.Threading.Tasks.Task<global::Nobbb.CurrentValue> AddOne(global::Nobbb.Empty request, grpc::ServerCallContext context)
      {
        throw new grpc::RpcException(new grpc::Status(grpc::StatusCode.Unimplemented, ""));
      }

      [global::System.CodeDom.Compiler.GeneratedCode("grpc_csharp_plugin", null)]
      public virtual global::System.Threading.Tasks.Task<global::Nobbb.CurrentValue> AddNumericalInput(global::Nobbb.NumericalInput request, grpc::ServerCallContext context)
      {
        throw new grpc::RpcException(new grpc::Status(grpc::StatusCode.Unimplemented, ""));
      }

      [global::System.CodeDom.Compiler.GeneratedCode("grpc_csharp_plugin", null)]
      public virtual global::System.Threading.Tasks.Task<global::Nobbb.Empty> ClearAll(global::Nobbb.Empty request, grpc::ServerCallContext context)
      {
        throw new grpc::RpcException(new grpc::Status(grpc::StatusCode.Unimplemented, ""));
      }

    }

    /// <summary>Creates service definition that can be registered with a server</summary>
    /// <param name="serviceImpl">An object implementing the server-side handling logic.</param>
    [global::System.CodeDom.Compiler.GeneratedCode("grpc_csharp_plugin", null)]
    public static grpc::ServerServiceDefinition BindService(calcServiceBase serviceImpl)
    {
      return grpc::ServerServiceDefinition.CreateBuilder()
          .AddMethod(__Method_AddOne, serviceImpl.AddOne)
          .AddMethod(__Method_AddNumericalInput, serviceImpl.AddNumericalInput)
          .AddMethod(__Method_ClearAll, serviceImpl.ClearAll).Build();
    }

    /// <summary>Register service method with a service binder with or without implementation. Useful when customizing the service binding logic.
    /// Note: this method is part of an experimental API that can change or be removed without any prior notice.</summary>
    /// <param name="serviceBinder">Service methods will be bound by calling <c>AddMethod</c> on this object.</param>
    /// <param name="serviceImpl">An object implementing the server-side handling logic.</param>
    [global::System.CodeDom.Compiler.GeneratedCode("grpc_csharp_plugin", null)]
    public static void BindService(grpc::ServiceBinderBase serviceBinder, calcServiceBase serviceImpl)
    {
      serviceBinder.AddMethod(__Method_AddOne, serviceImpl == null ? null : new grpc::UnaryServerMethod<global::Nobbb.Empty, global::Nobbb.CurrentValue>(serviceImpl.AddOne));
      serviceBinder.AddMethod(__Method_AddNumericalInput, serviceImpl == null ? null : new grpc::UnaryServerMethod<global::Nobbb.NumericalInput, global::Nobbb.CurrentValue>(serviceImpl.AddNumericalInput));
      serviceBinder.AddMethod(__Method_ClearAll, serviceImpl == null ? null : new grpc::UnaryServerMethod<global::Nobbb.Empty, global::Nobbb.Empty>(serviceImpl.ClearAll));
    }

  }
}
#endregion
