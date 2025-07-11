.class public Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;
.super Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;
.source "TransmissionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/TransmissionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FeedbackData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData$a;

    invoke-direct {v0}, Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData$a;-><init>()V

    sput-object v0, Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;-><init>(Landroid/os/Parcel;)V

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;->a:I

    return-void
.end method

.method public constructor <init>(Lcom/netease/mpay/oversea/FeedbackCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;-><init>()V

    .line 2
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$FeedbackData;->a(Lcom/netease/mpay/oversea/FeedbackCallback;)I

    move-result p1

    iput p1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;->a:I

    return-void
.end method

.method private a(Lcom/netease/mpay/oversea/FeedbackCallback;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lcom/netease/mpay/oversea/ui/TransmissionData;->e()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method public a()Lcom/netease/mpay/oversea/FeedbackCallback;
    .locals 2

    .line 1
    invoke-static {}, Lcom/netease/mpay/oversea/ui/TransmissionData;->e()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/netease/mpay/oversea/ui/TransmissionData;->e()Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/mpay/oversea/FeedbackCallback;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget p2, p0, Lcom/netease/mpay/oversea/ui/TransmissionData$BaseData;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
