.class final Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;
.super Ljava/lang/Object;


# static fields
.field private static final c:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;


# instance fields
.field a:Lorg/jboss/netty/channel/socket/nio/ag;

.field b:Lorg/jboss/netty/channel/socket/nio/af;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/ab;

    invoke-direct {v0}, Lorg/jboss/netty/channel/socket/nio/ab;-><init>()V

    sput-object v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->c:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/af;

    const/high16 v1, 0x10000

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/channel/socket/nio/af;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;I)V

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->b:Lorg/jboss/netty/channel/socket/nio/af;

    return-void
.end method

.method private static a(I)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x4

    and-int/lit8 v1, p0, 0xf

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    shl-int/lit8 v0, v0, 0x4

    return v0
.end method

.method private a()Lorg/jboss/netty/channel/socket/nio/af;
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->a:Lorg/jboss/netty/channel/socket/nio/ag;

    if-eqz v0, :cond_2

    move-object v1, v0

    :cond_0
    invoke-virtual {v1}, Lorg/jboss/netty/channel/socket/nio/ag;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/channel/socket/nio/af;

    iget-object v1, v1, Lorg/jboss/netty/channel/socket/nio/ag;->a:Lorg/jboss/netty/channel/socket/nio/ag;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->a:Lorg/jboss/netty/channel/socket/nio/ag;

    :goto_0
    return-object v0

    :cond_1
    if-nez v1, :cond_0

    iput-object v1, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->a:Lorg/jboss/netty/channel/socket/nio/ag;

    :cond_2
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/af;

    const/high16 v1, 0x10000

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/channel/socket/nio/af;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;I)V

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/Object;)Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;
    .locals 5

    instance-of v0, p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    if-eqz v0, :cond_7

    check-cast p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->c:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    :goto_0
    return-object v0

    :cond_0
    instance-of v0, p1, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lorg/jboss/netty/buffer/CompositeChannelBuffer;

    invoke-virtual {v0}, Lorg/jboss/netty/buffer/CompositeChannelBuffer;->useGathering()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/ad;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/channel/socket/nio/ad;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;[Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/ah;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/channel/socket/nio/ah;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    const/high16 v2, 0x10000

    if-le v0, v2, :cond_3

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/ah;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/channel/socket/nio/ah;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->b:Lorg/jboss/netty/channel/socket/nio/af;

    iget-object v0, v2, Lorg/jboss/netty/channel/socket/nio/af;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v1, v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->a(I)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v0, v2, Lorg/jboss/netty/channel/socket/nio/af;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lorg/jboss/netty/channel/socket/nio/af;->b:I

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/ae;

    invoke-direct {v0, p0, v2, v3}, Lorg/jboss/netty/channel/socket/nio/ae;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/af;Ljava/nio/ByteBuffer;)V

    :goto_1
    iget-object v1, v0, Lorg/jboss/netty/channel/socket/nio/ae;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    invoke-interface {p1, v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILjava/nio/ByteBuffer;)V

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    goto :goto_0

    :cond_4
    if-le v1, v3, :cond_6

    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->b:Lorg/jboss/netty/channel/socket/nio/af;

    iget v2, v0, Lorg/jboss/netty/channel/socket/nio/af;->b:I

    if-nez v2, :cond_5

    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/af;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_2
    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->b:Lorg/jboss/netty/channel/socket/nio/af;

    iget-object v2, v0, Lorg/jboss/netty/channel/socket/nio/af;->a:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {v1}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->a(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget v1, v0, Lorg/jboss/netty/channel/socket/nio/af;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lorg/jboss/netty/channel/socket/nio/af;->b:I

    new-instance v1, Lorg/jboss/netty/channel/socket/nio/ae;

    invoke-direct {v1, p0, v0, v3}, Lorg/jboss/netty/channel/socket/nio/ae;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/af;Ljava/nio/ByteBuffer;)V

    move-object v0, v1

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->a()Lorg/jboss/netty/channel/socket/nio/af;

    move-result-object v0

    goto :goto_2

    :cond_6
    iget v0, v2, Lorg/jboss/netty/channel/socket/nio/af;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Lorg/jboss/netty/channel/socket/nio/af;->b:I

    invoke-direct {p0}, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->a()Lorg/jboss/netty/channel/socket/nio/af;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->b:Lorg/jboss/netty/channel/socket/nio/af;

    new-instance v0, Lorg/jboss/netty/channel/socket/nio/ae;

    iget-object v1, v2, Lorg/jboss/netty/channel/socket/nio/af;->a:Ljava/nio/ByteBuffer;

    invoke-direct {v0, p0, v2, v1}, Lorg/jboss/netty/channel/socket/nio/ae;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/socket/nio/af;Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_7
    instance-of v0, p1, Lorg/jboss/netty/channel/FileRegion;

    if-eqz v0, :cond_9

    check-cast p1, Lorg/jboss/netty/channel/FileRegion;

    invoke-interface {p1}, Lorg/jboss/netty/channel/FileRegion;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    sget-object v0, Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;->c:Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool$SendBuffer;

    goto/16 :goto_0

    :cond_8
    new-instance v0, Lorg/jboss/netty/channel/socket/nio/ac;

    invoke-direct {v0, p0, p1}, Lorg/jboss/netty/channel/socket/nio/ac;-><init>(Lorg/jboss/netty/channel/socket/nio/SocketSendBufferPool;Lorg/jboss/netty/channel/FileRegion;)V

    goto/16 :goto_0

    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unsupported message type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
