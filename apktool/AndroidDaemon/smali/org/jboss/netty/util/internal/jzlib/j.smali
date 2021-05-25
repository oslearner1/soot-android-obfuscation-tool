.class final enum Lorg/jboss/netty/util/internal/jzlib/j;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lorg/jboss/netty/util/internal/jzlib/j;

.field public static final enum b:Lorg/jboss/netty/util/internal/jzlib/j;

.field public static final enum c:Lorg/jboss/netty/util/internal/jzlib/j;

.field public static final enum d:Lorg/jboss/netty/util/internal/jzlib/j;

.field private static final synthetic e:[Lorg/jboss/netty/util/internal/jzlib/j;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/j;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/util/internal/jzlib/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/j;->a:Lorg/jboss/netty/util/internal/jzlib/j;

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/j;

    const-string v1, "ZLIB"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/util/internal/jzlib/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/j;->b:Lorg/jboss/netty/util/internal/jzlib/j;

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/j;

    const-string v1, "GZIP"

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/util/internal/jzlib/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/j;->c:Lorg/jboss/netty/util/internal/jzlib/j;

    new-instance v0, Lorg/jboss/netty/util/internal/jzlib/j;

    const-string v1, "ZLIB_OR_NONE"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/util/internal/jzlib/j;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/j;->d:Lorg/jboss/netty/util/internal/jzlib/j;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/jboss/netty/util/internal/jzlib/j;

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/j;->a:Lorg/jboss/netty/util/internal/jzlib/j;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/j;->b:Lorg/jboss/netty/util/internal/jzlib/j;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/j;->c:Lorg/jboss/netty/util/internal/jzlib/j;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jboss/netty/util/internal/jzlib/j;->d:Lorg/jboss/netty/util/internal/jzlib/j;

    aput-object v1, v0, v5

    sput-object v0, Lorg/jboss/netty/util/internal/jzlib/j;->e:[Lorg/jboss/netty/util/internal/jzlib/j;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/util/internal/jzlib/j;
    .locals 1

    const-class v0, Lorg/jboss/netty/util/internal/jzlib/j;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/util/internal/jzlib/j;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/util/internal/jzlib/j;
    .locals 1

    sget-object v0, Lorg/jboss/netty/util/internal/jzlib/j;->e:[Lorg/jboss/netty/util/internal/jzlib/j;

    invoke-virtual {v0}, [Lorg/jboss/netty/util/internal/jzlib/j;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/util/internal/jzlib/j;

    return-object v0
.end method
