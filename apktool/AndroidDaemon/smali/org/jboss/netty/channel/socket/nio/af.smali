.class final Lorg/jboss/netty/channel/socket/nio/af;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/nio/ByteBuffer;

.field b:I


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x10000

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/af;->a:Ljava/nio/ByteBuffer;

    return-void
.end method
