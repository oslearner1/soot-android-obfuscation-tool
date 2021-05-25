.class final Lorg/jboss/netty/handler/codec/replay/b;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/buffer/ChannelBuffer;


# static fields
.field private static final a:Ljava/lang/Error;


# instance fields
.field private final b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/a;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/a;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/replay/b;->a:Ljava/lang/Error;

    return-void
.end method

.method constructor <init>(Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    if-ge v0, p1, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/b;->a:Ljava/lang/Error;

    throw v0

    :cond_0
    return-void
.end method

.method private a(II)V
    .locals 2

    add-int v0, p1, p2

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v1

    if-le v0, v1, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/b;->a:Ljava/lang/Error;

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method final a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->c:Z

    return-void
.end method

.method public final array()[B
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final arrayOffset()I
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final bytesBefore(B)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(B)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/b;->a:Ljava/lang/Error;

    throw v0

    :cond_0
    return v0
.end method

.method public final bytesBefore(IB)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(IB)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/b;->a:Ljava/lang/Error;

    throw v0

    :cond_0
    return v0
.end method

.method public final bytesBefore(IIB)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(IIB)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/b;->a:Ljava/lang/Error;

    throw v0

    :cond_0
    return v0
.end method

.method public final bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/b;->a:Ljava/lang/Error;

    throw v0

    :cond_0
    return v0
.end method

.method public final bytesBefore(ILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(ILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/b;->a:Ljava/lang/Error;

    throw v0

    :cond_0
    return v0
.end method

.method public final bytesBefore(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->bytesBefore(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/b;->a:Ljava/lang/Error;

    throw v0

    :cond_0
    return v0
.end method

.method public final capacity()I
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->capacity()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public final clear()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/replay/b;->compareTo(Lorg/jboss/netty/buffer/ChannelBuffer;)I

    move-result v0

    return v0
.end method

.method public final compareTo(Lorg/jboss/netty/buffer/ChannelBuffer;)I
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final copy()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->copy(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final discardReadBytes()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final duplicate()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final ensureWritableBytes(I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->factory()Lorg/jboss/netty/buffer/ChannelBufferFactory;

    move-result-object v0

    return-object v0
.end method

.method public final getByte(I)B
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getByte(I)B

    move-result v0

    return v0
.end method

.method public final getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final getBytes(ILjava/io/OutputStream;I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final getBytes(ILjava/nio/ByteBuffer;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1

    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V

    return-void
.end method

.method public final getBytes(I[B)V
    .locals 1

    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[B)V

    return-void
.end method

.method public final getBytes(I[BII)V
    .locals 1

    invoke-direct {p0, p1, p4}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->getBytes(I[BII)V

    return-void
.end method

.method public final getChar(I)C
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getChar(I)C

    move-result v0

    return v0
.end method

.method public final getDouble(I)D
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getFloat(I)F
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public final getInt(I)I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method public final getLong(I)J
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getMedium(I)I
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getMedium(I)I

    move-result v0

    return v0
.end method

.method public final getShort(I)S
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method public final getUnsignedByte(I)S
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedByte(I)S

    move-result v0

    return v0
.end method

.method public final getUnsignedInt(I)J
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getUnsignedMedium(I)I
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public final getUnsignedShort(I)I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->getUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public final hasArray()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final indexOf(IIB)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IIB)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/b;->a:Ljava/lang/Error;

    throw v0

    :cond_0
    return v0
.end method

.method public final indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/b;->a:Ljava/lang/Error;

    throw v0

    :cond_0
    return v0
.end method

.method public final isDirect()Z
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->isDirect()Z

    move-result v0

    return v0
.end method

.method public final markReaderIndex()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->markReaderIndex()V

    return-void
.end method

.method public final markWriterIndex()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final order()Ljava/nio/ByteOrder;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    return-object v0
.end method

.method public final readByte()B
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readByte()B

    move-result v0

    return v0
.end method

.method public final readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final readBytes(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/b;->a:Ljava/lang/Error;

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final readBytes(Ljava/io/OutputStream;I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final readBytes(Ljava/nio/ByteBuffer;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1

    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V

    return-void
.end method

.method public final readBytes([B)V
    .locals 1

    array-length v0, p1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([B)V

    return-void
.end method

.method public final readBytes([BII)V
    .locals 1

    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->readBytes([BII)V

    return-void
.end method

.method public final readChar()C
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readChar()C

    move-result v0

    return v0
.end method

.method public final readDouble()D
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public final readFloat()F
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readFloat()F

    move-result v0

    return v0
.end method

.method public final readInt()I
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readInt()I

    move-result v0

    return v0
.end method

.method public final readLong()J
    .locals 2

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readMedium()I
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readMedium()I

    move-result v0

    return v0
.end method

.method public final readShort()S
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readShort()S

    move-result v0

    return v0
.end method

.method public final readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final readSlice(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v0, v1, v2, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/b;->a:Ljava/lang/Error;

    throw v0

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-interface {v1, v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readSlice(I)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final readUnsignedByte()S
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedByte()S

    move-result v0

    return v0
.end method

.method public final readUnsignedInt()J
    .locals 2

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method public final readUnsignedMedium()I
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedMedium()I

    move-result v0

    return v0
.end method

.method public final readUnsignedShort()I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public final readable()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readable()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final readableBytes()I
    .locals 2

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const v0, 0x7fffffff

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public final readerIndex()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    return v0
.end method

.method public final readerIndex(I)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    return-void
.end method

.method public final resetReaderIndex()V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->resetReaderIndex()V

    return-void
.end method

.method public final resetWriterIndex()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setByte(II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setBytes(ILjava/io/InputStream;I)I
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setBytes(ILjava/nio/ByteBuffer;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setBytes(ILorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setBytes(I[B)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setBytes(I[BII)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setChar(II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setDouble(ID)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setFloat(IF)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setIndex(II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setInt(II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setLong(IJ)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setMedium(II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setShort(II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final setZero(II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final skipBytes(Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v1}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v2

    invoke-interface {v1, v0, v2, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->indexOf(IILorg/jboss/netty/buffer/ChannelBufferIndexFinder;)I

    move-result v1

    if-gez v1, :cond_0

    sget-object v0, Lorg/jboss/netty/handler/codec/replay/b;->a:Ljava/lang/Error;

    throw v0

    :cond_0
    iget-object v2, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v2}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    sub-int v0, v1, v0

    return v0
.end method

.method public final skipBytes(I)V
    .locals 1

    invoke-direct {p0, p1}, Lorg/jboss/netty/handler/codec/replay/b;->a(I)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->skipBytes(I)V

    return-void
.end method

.method public final slice()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->slice(II)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final toByteBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final toByteBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final toByteBuffers()[Ljava/nio/ByteBuffer;
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final toByteBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/jboss/netty/buffer/ChannelBuffer;->toByteBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ridx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/replay/b;->readerIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", widx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/replay/b;->writerIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(IILjava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(IILjava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/jboss/netty/handler/codec/replay/b;->a(II)V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lorg/jboss/netty/buffer/ChannelBuffer;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final toString(Ljava/lang/String;Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writableBytes()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeByte(I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writeBytes(Ljava/io/InputStream;I)I
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writeBytes(Ljava/nio/ByteBuffer;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writeBytes(Lorg/jboss/netty/buffer/ChannelBuffer;II)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writeBytes([B)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writeBytes([BII)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writeChar(I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writeDouble(D)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writeFloat(F)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writeInt(I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writeLong(J)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writeMedium(I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writeShort(I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writeZero(I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method

.method public final writerIndex()I
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/replay/b;->b:Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;

    invoke-virtual {v0}, Lorg/jboss/netty/handler/codec/replay/ReplayingDecoder;->internalBuffer()Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v0

    return v0
.end method

.method public final writerIndex(I)V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/replay/UnreplayableOperationException;-><init>()V

    throw v0
.end method
