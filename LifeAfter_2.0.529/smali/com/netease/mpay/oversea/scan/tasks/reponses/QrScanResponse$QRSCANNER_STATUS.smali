.class public Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse$QRSCANNER_STATUS;
.super Ljava/lang/Object;
.source "QrScanResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/scan/tasks/reponses/QrScanResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QRSCANNER_STATUS"
.end annotation


# static fields
.field public static final CANCELED:I = 0x3

.field public static final CONFIRMED:I = 0x2

.field public static final DEFAULT:I = 0x0

.field public static final SCANNED:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
