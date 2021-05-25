.class public abstract Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/multipart/HttpData;


# instance fields
.field protected charset:Ljava/nio/charset/Charset;

.field protected completed:Z

.field protected definedSize:J

.field protected final name:Ljava/lang/String;

.field protected size:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->charset:Ljava/nio/charset/Charset;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7f

    if-le v2, v3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "name contains non-ascii character: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    sparse-switch v2, :sswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "name contains one of the following prohibited characters: =,; \\t\\r\\n\\v\\f: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object v1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->name:Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->setCharset(Ljava/nio/charset/Charset;)V

    :cond_4
    iput-wide p3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->definedSize:J

    return-void

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xa -> :sswitch_0
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_0
        0x20 -> :sswitch_0
        0x2c -> :sswitch_0
        0x3b -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->completed:Z

    return v0
.end method

.method public length()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->size:J

    return-wide v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->charset:Ljava/nio/charset/Charset;

    return-void
.end method
