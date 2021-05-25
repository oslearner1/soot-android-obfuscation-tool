.class final Lorg/jboss/netty/handler/stream/a;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelFutureListener;


# instance fields
.field private synthetic a:Lorg/jboss/netty/handler/stream/ChunkedInput;


# direct methods
.method constructor <init>(Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;Lorg/jboss/netty/handler/stream/ChunkedInput;)V
    .locals 0

    iput-object p2, p0, Lorg/jboss/netty/handler/stream/a;->a:Lorg/jboss/netty/handler/stream/ChunkedInput;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final operationComplete(Lorg/jboss/netty/channel/ChannelFuture;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/stream/a;->a:Lorg/jboss/netty/handler/stream/ChunkedInput;

    invoke-static {v0}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;->closeInput(Lorg/jboss/netty/handler/stream/ChunkedInput;)V

    return-void
.end method
