.class final Lorg/jboss/netty/channel/socket/nio/ae;
.super Lorg/jboss/netty/channel/socket/nio/ah;


# instance fields
.field private final b:Lorg/jboss/netty/channel/socket/nio/af;

.field private synthetic c:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/af;Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/ae;->c:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    invoke-direct {p0, p1, p3}, Lorg/jboss/netty/channel/socket/nio/ah;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Ljava/nio/ByteBuffer;)V

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/ae;->b:Lorg/jboss/netty/channel/socket/nio/af;

    return-void
.end method


# virtual methods
.method public final release()V
    .locals 5

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/ae;->b:Lorg/jboss/netty/channel/socket/nio/af;

    iget v1, v0, Lorg/jboss/netty/channel/socket/nio/af;->b:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lorg/jboss/netty/channel/socket/nio/af;->b:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/af;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/ae;->c:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->b:Lorg/jboss/netty/channel/socket/nio/af;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/ae;->c:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    new-instance v2, Lorg/jboss/netty/channel/socket/nio/ag;

    iget-object v3, p0, Lorg/jboss/netty/channel/socket/nio/ae;->c:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    iget-object v4, p0, Lorg/jboss/netty/channel/socket/nio/ae;->c:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;

    iget-object v4, v4, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->a:Lorg/jboss/netty/channel/socket/nio/ag;

    invoke-direct {v2, v3, v0, v4}, Lorg/jboss/netty/channel/socket/nio/ag;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/af;Lorg/jboss/netty/channel/socket/nio/ag;)V

    iput-object v2, v1, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->a:Lorg/jboss/netty/channel/socket/nio/ag;

    :cond_0
    return-void
.end method
