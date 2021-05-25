.class public final Lcom/google_mms/android/mms/util/PduCacheEntry;
.super Ljava/lang/Object;


# instance fields
.field private final mMessageBox:I

.field private final mPdu:Lcom/google_mms/android/mms/pdu/GenericPdu;

.field private final mThreadId:J


# direct methods
.method public constructor <init>(Lcom/google_mms/android/mms/pdu/GenericPdu;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google_mms/android/mms/util/PduCacheEntry;->mPdu:Lcom/google_mms/android/mms/pdu/GenericPdu;

    iput p2, p0, Lcom/google_mms/android/mms/util/PduCacheEntry;->mMessageBox:I

    iput-wide p3, p0, Lcom/google_mms/android/mms/util/PduCacheEntry;->mThreadId:J

    return-void
.end method


# virtual methods
.method public final getMessageBox()I
    .locals 1

    iget v0, p0, Lcom/google_mms/android/mms/util/PduCacheEntry;->mMessageBox:I

    return v0
.end method

.method public final getPdu()Lcom/google_mms/android/mms/pdu/GenericPdu;
    .locals 1

    iget-object v0, p0, Lcom/google_mms/android/mms/util/PduCacheEntry;->mPdu:Lcom/google_mms/android/mms/pdu/GenericPdu;

    return-object v0
.end method

.method public final getThreadId()J
    .locals 2

    iget-wide v0, p0, Lcom/google_mms/android/mms/util/PduCacheEntry;->mThreadId:J

    return-wide v0
.end method
