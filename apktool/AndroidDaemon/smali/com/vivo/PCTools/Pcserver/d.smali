.class public final Lcom/vivo/PCTools/Pcserver/d;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelPipelineFactory;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lorg/jboss/netty/util/HashedWheelTimer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/jboss/netty/util/HashedWheelTimer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/vivo/PCTools/Pcserver/d;->b:Lorg/jboss/netty/util/HashedWheelTimer;

    iput-object p1, p0, Lcom/vivo/PCTools/Pcserver/d;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 5

    invoke-static {}, Lorg/jboss/netty/channel/Channels;->pipeline()Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    const-string v1, "ProtocalDecode"

    new-instance v2, Lcom/vivo/PCTools/q/a/b;

    iget-object v3, p0, Lcom/vivo/PCTools/Pcserver/d;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/vivo/PCTools/q/a/b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    const-string v1, "ProtocalEncode"

    new-instance v2, Lcom/vivo/PCTools/q/a/c;

    invoke-direct {v2}, Lcom/vivo/PCTools/q/a/c;-><init>()V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    const-string v1, "chunkedWriter"

    new-instance v2, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;

    invoke-direct {v2}, Lorg/jboss/netty/handler/stream/ChunkedWriteHandler;-><init>()V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    const-string v1, "handler"

    new-instance v2, Lcom/vivo/PCTools/Pcserver/f;

    iget-object v3, p0, Lcom/vivo/PCTools/Pcserver/d;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/vivo/PCTools/Pcserver/d;->b:Lorg/jboss/netty/util/HashedWheelTimer;

    invoke-direct {v2, v3, v4}, Lcom/vivo/PCTools/Pcserver/f;-><init>(Landroid/content/Context;Lorg/jboss/netty/util/HashedWheelTimer;)V

    invoke-interface {v0, v1, v2}, Lorg/jboss/netty/channel/ChannelPipeline;->addLast(Ljava/lang/String;Lorg/jboss/netty/channel/ChannelHandler;)V

    return-object v0
.end method
