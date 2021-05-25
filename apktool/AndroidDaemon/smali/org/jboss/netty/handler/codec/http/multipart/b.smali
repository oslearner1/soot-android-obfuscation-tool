.class final Lorg/jboss/netty/handler/codec/http/multipart/b;
.super Ljava/lang/Object;


# instance fields
.field a:[B

.field b:I

.field c:I

.field private d:I

.field private e:Lorg/jboss/netty/buffer/ChannelBuffer;


# direct methods
.method constructor <init>(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->hasArray()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/a;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/http/multipart/a;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/b;->e:Lorg/jboss/netty/buffer/ChannelBuffer;

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/b;->a:[B

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->arrayOffset()I

    move-result v0

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/b;->d:I

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/b;->b:I

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->arrayOffset()I

    move-result v0

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->writerIndex()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/b;->c:I

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 2

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/b;->b:I

    sub-int/2addr v0, p1

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/b;->b:I

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/b;->b:I

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/b;->d:I

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/b;->e:Lorg/jboss/netty/buffer/ChannelBuffer;

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/b;->d:I

    invoke-interface {v0, v1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readerIndex(I)V

    return-void
.end method
