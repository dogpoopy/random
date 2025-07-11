.class public Lcom/huawei/iaware/sdk/IAwareSdk;
.super Ljava/lang/Object;
.source "IAwareSdk.java"


# static fields
.field private static final FIRST_ASYNC_CALL_TRANSACTION:I = 0x2711

.field private static final FIRST_SYNC_CALL_TRANSACTION:I = 0x1

.field private static final LAST_ASYNC_CALL_TRANSACTION:I = 0xffffff

.field private static final LAST_SYNC_CALL_TRANSACTION:I = 0x2710

.field private static final TRANSACTION_ASYNC_REPORT_DATA:I = 0x2711

.field private static final TRANSACTION_REPORT_DATA:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncReportData(ILjava/lang/String;J)V
    .locals 0

    const/4 p2, 0x1

    .line 48
    invoke-static {p0, p1, p2}, Lcom/huawei/iaware/sdk/IAwareSdk;->reportData(ILjava/lang/String;Z)V

    return-void
.end method

.method public static reportData(ILjava/lang/String;J)V
    .locals 0

    const/4 p2, 0x0

    .line 44
    invoke-static {p0, p1, p2}, Lcom/huawei/iaware/sdk/IAwareSdk;->reportData(ILjava/lang/String;Z)V

    return-void
.end method

.method private static reportData(ILjava/lang/String;Z)V
    .locals 4

    .line 27
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 28
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 30
    invoke-virtual {v0, p0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 32
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 p1, 0x2711

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 37
    :goto_0
    invoke-static {p1, v0, v1, p0}, Landroid/rms/iaware/IAwareSdkCore;->handleEvent(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 39
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 40
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void
.end method
