.class Lorg/jboss/netty/channel/socket/nio/ah;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;


# instance fields
.field final a:Ljava/nio/ByteBuffer;

.field private b:I


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/ah;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iput v0, p0, Lorg/jboss/netty/channel/socket/nio/ah;->b:I

    return-void
.end method


# virtual methods
.method public final finished()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/ah;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public final totalBytes()J
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/ah;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/ah;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public final transferTo(Ljava/nio/channels/DatagramChannel;Ljava/net/SocketAddress;)J
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/ah;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0, p2}, Ljava/nio/channels/DatagramChannel;->send(Ljava/nio/ByteBuffer;Ljava/net/SocketAddress;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final transferTo(Ljava/nio/channels/WritableByteChannel;)J
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/ah;->a:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final writtenBytes()J
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/ah;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget v1, p0, Lorg/jboss/netty/channel/socket/nio/ah;->b:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method
