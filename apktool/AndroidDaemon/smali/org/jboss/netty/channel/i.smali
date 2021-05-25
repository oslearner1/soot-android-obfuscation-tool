.class final Lorg/jboss/netty/channel/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jboss/netty/channel/Channel;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/Channel;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/i;->a:Lorg/jboss/netty/channel/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/i;->a:Lorg/jboss/netty/channel/Channel;

    invoke-static {v0}, Lorg/jboss/netty/channel/Channels;->fireChannelUnbound(Lorg/jboss/netty/channel/Channel;)V

    return-void
.end method
