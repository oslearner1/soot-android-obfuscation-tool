.class final Lorg/jboss/netty/channel/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lorg/jboss/netty/channel/Channel;

.field private synthetic b:J


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/Channel;J)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/f;->a:Lorg/jboss/netty/channel/Channel;

    iput-wide p2, p0, Lorg/jboss/netty/channel/f;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/channel/f;->a:Lorg/jboss/netty/channel/Channel;

    iget-wide v1, p0, Lorg/jboss/netty/channel/f;->b:J

    invoke-static {v0, v1, v2}, Lorg/jboss/netty/channel/Channels;->fireWriteComplete(Lorg/jboss/netty/channel/Channel;J)V

    return-void
.end method
