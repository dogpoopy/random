.class public Landroid/rms/iaware/IAwareSdkCore;
.super Ljava/lang/Object;
.source "IAwareSdkCore.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleEvent(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    const/4 v0, -0x1

    .line 11
    invoke-static {p0, p1, p2, v0}, Landroid/rms/iaware/IAwareSdkCore;->handleEvent(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0
.end method

.method public static handleEvent(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
