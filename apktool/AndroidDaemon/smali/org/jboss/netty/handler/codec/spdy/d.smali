.class final enum Lorg/jboss/netty/handler/codec/spdy/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/jboss/netty/handler/codec/spdy/d;

.field public static final enum b:Lorg/jboss/netty/handler/codec/spdy/d;

.field public static final enum c:Lorg/jboss/netty/handler/codec/spdy/d;

.field public static final enum d:Lorg/jboss/netty/handler/codec/spdy/d;

.field public static final enum e:Lorg/jboss/netty/handler/codec/spdy/d;

.field public static final enum f:Lorg/jboss/netty/handler/codec/spdy/d;

.field public static final enum g:Lorg/jboss/netty/handler/codec/spdy/d;

.field public static final enum h:Lorg/jboss/netty/handler/codec/spdy/d;

.field private static final synthetic i:[Lorg/jboss/netty/handler/codec/spdy/d;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/d;

    const-string v1, "READ_COMMON_HEADER"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/spdy/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/d;->a:Lorg/jboss/netty/handler/codec/spdy/d;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/d;

    const-string v1, "READ_CONTROL_FRAME"

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/spdy/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/d;->b:Lorg/jboss/netty/handler/codec/spdy/d;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/d;

    const-string v1, "READ_SETTINGS_FRAME"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/spdy/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/d;->c:Lorg/jboss/netty/handler/codec/spdy/d;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/d;

    const-string v1, "READ_HEADER_BLOCK_FRAME"

    invoke-direct {v0, v1, v6}, Lorg/jboss/netty/handler/codec/spdy/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/d;->d:Lorg/jboss/netty/handler/codec/spdy/d;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/d;

    const-string v1, "READ_HEADER_BLOCK"

    invoke-direct {v0, v1, v7}, Lorg/jboss/netty/handler/codec/spdy/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/d;->e:Lorg/jboss/netty/handler/codec/spdy/d;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/d;

    const-string v1, "READ_DATA_FRAME"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/d;->f:Lorg/jboss/netty/handler/codec/spdy/d;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/d;

    const-string v1, "DISCARD_FRAME"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/d;->g:Lorg/jboss/netty/handler/codec/spdy/d;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/d;

    const-string v1, "FRAME_ERROR"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/d;->h:Lorg/jboss/netty/handler/codec/spdy/d;

    const/16 v0, 0x8

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/spdy/d;

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/d;->a:Lorg/jboss/netty/handler/codec/spdy/d;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/d;->b:Lorg/jboss/netty/handler/codec/spdy/d;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/d;->c:Lorg/jboss/netty/handler/codec/spdy/d;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/d;->d:Lorg/jboss/netty/handler/codec/spdy/d;

    aput-object v1, v0, v6

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/d;->e:Lorg/jboss/netty/handler/codec/spdy/d;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/d;->f:Lorg/jboss/netty/handler/codec/spdy/d;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/d;->g:Lorg/jboss/netty/handler/codec/spdy/d;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/jboss/netty/handler/codec/spdy/d;->h:Lorg/jboss/netty/handler/codec/spdy/d;

    aput-object v2, v0, v1

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/d;->i:[Lorg/jboss/netty/handler/codec/spdy/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/spdy/d;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/spdy/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/d;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/spdy/d;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/d;->i:[Lorg/jboss/netty/handler/codec/spdy/d;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/spdy/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/spdy/d;

    return-object v0
.end method
