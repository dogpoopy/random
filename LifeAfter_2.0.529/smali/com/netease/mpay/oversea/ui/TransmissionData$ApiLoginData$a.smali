.class Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData$a;
.super Ljava/lang/Object;
.source "TransmissionData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

    invoke-direct {v0, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData$a;->a(Landroid/os/Parcel;)Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData$a;->a(I)[Lcom/netease/mpay/oversea/ui/TransmissionData$ApiLoginData;

    move-result-object p1

    return-object p1
.end method
