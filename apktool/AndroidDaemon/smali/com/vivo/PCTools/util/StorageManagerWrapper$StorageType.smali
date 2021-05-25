.class public final enum Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

.field public static final enum ExternalStorage:Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

.field public static final enum InternalStorage:Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

.field public static final enum UsbStorage:Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    const-string v1, "InternalStorage"

    invoke-direct {v0, v1, v2}, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;->InternalStorage:Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    new-instance v0, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    const-string v1, "ExternalStorage"

    invoke-direct {v0, v1, v3}, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;->ExternalStorage:Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    new-instance v0, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    const-string v1, "UsbStorage"

    invoke-direct {v0, v1, v4}, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;->UsbStorage:Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    sget-object v1, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;->InternalStorage:Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;->ExternalStorage:Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;->UsbStorage:Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;->ENUM$VALUES:[Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;
    .locals 1

    const-class v0, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    return-object v0
.end method

.method public static values()[Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;->ENUM$VALUES:[Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    array-length v1, v0

    new-array v2, v1, [Lcom/vivo/PCTools/util/StorageManagerWrapper$StorageType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
