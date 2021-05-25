.class final Lorg/jboss/netty/channel/e;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/ChannelPipelineFactory;


# instance fields
.field private synthetic a:Lorg/jboss/netty/channel/ChannelPipeline;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelPipeline;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/e;->a:Lorg/jboss/netty/channel/ChannelPipeline;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getPipeline()Lorg/jboss/netty/channel/ChannelPipeline;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/e;->a:Lorg/jboss/netty/channel/ChannelPipeline;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->pipeline(Lorg/jboss/netty/channel/ChannelPipeline;)Lorg/jboss/netty/channel/ChannelPipeline;

    move-result-object v0

    return-object v0
.end method
