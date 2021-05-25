.class final Lorg/jboss/netty/handler/codec/http/c;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/HttpChunkTrailer;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final clearHeaders()V
    .locals 0

    return-void
.end method

.method public final containsHeader(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getContent()Lorg/jboss/netty/buffer/ChannelBuffer;
    .locals 1

    sget-object v0, Lorg/jboss/netty/buffer/ChannelBuffers;->EMPTY_BUFFER:Lorg/jboss/netty/buffer/ChannelBuffer;

    return-object v0
.end method

.method public final getHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getHeaderNames()Ljava/util/Set;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaders()Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getHeaders(Ljava/lang/String;)Ljava/util/List;
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final isLast()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final removeHeader(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setHeader(Ljava/lang/String;Ljava/lang/Iterable;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final setHeader(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "read-only"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
