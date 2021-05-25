.class final Lorg/jboss/netty/handler/ssl/g;
.super Ljava/lang/Object;


# instance fields
.field final a:Lorg/jboss/netty/channel/ChannelFuture;

.field final b:Ljava/nio/ByteBuffer;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/ChannelFuture;Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/ssl/g;->a:Lorg/jboss/netty/channel/ChannelFuture;

    iput-object p2, p0, Lorg/jboss/netty/handler/ssl/g;->b:Ljava/nio/ByteBuffer;

    return-void
.end method
