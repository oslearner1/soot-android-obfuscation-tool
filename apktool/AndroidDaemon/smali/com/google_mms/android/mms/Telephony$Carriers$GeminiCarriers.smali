.class public final Lcom/google_mms/android/mms/Telephony$Carriers$GeminiCarriers;
.super Ljava/lang/Object;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final CONTENT_URI_DM:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://telephony/carriers_gemini"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google_mms/android/mms/Telephony$Carriers$GeminiCarriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://telephony/carriers_dm_gemini"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google_mms/android/mms/Telephony$Carriers$GeminiCarriers;->CONTENT_URI_DM:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
