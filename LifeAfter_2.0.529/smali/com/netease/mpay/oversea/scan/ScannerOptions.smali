.class public Lcom/netease/mpay/oversea/scan/ScannerOptions;
.super Ljava/lang/Object;
.source "ScannerOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mpay/oversea/scan/ScannerOptions$Builder;,
        Lcom/netease/mpay/oversea/scan/ScannerOptions$ScannerExtQrCodeCallback;
    }
.end annotation


# instance fields
.field public final scannerExtQrCodeCallback:Lcom/netease/mpay/oversea/scan/ScannerOptions$ScannerExtQrCodeCallback;


# direct methods
.method private constructor <init>(Lcom/netease/mpay/oversea/scan/ScannerOptions$ScannerExtQrCodeCallback;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/ScannerOptions;->scannerExtQrCodeCallback:Lcom/netease/mpay/oversea/scan/ScannerOptions$ScannerExtQrCodeCallback;

    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/mpay/oversea/scan/ScannerOptions$ScannerExtQrCodeCallback;Lcom/netease/mpay/oversea/scan/ScannerOptions$1;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/netease/mpay/oversea/scan/ScannerOptions;-><init>(Lcom/netease/mpay/oversea/scan/ScannerOptions$ScannerExtQrCodeCallback;)V

    return-void
.end method
