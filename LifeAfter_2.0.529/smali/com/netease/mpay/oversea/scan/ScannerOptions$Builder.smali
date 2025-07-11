.class public final Lcom/netease/mpay/oversea/scan/ScannerOptions$Builder;
.super Ljava/lang/Object;
.source "ScannerOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/mpay/oversea/scan/ScannerOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private scannerExtQrCodeCallback:Lcom/netease/mpay/oversea/scan/ScannerOptions$ScannerExtQrCodeCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/netease/mpay/oversea/scan/ScannerOptions$ScannerExtQrCodeCallback;)Lcom/netease/mpay/oversea/scan/ScannerOptions$Builder;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/netease/mpay/oversea/scan/ScannerOptions$Builder;->scannerExtQrCodeCallback:Lcom/netease/mpay/oversea/scan/ScannerOptions$ScannerExtQrCodeCallback;

    return-object p0
.end method

.method public build()Lcom/netease/mpay/oversea/scan/ScannerOptions;
    .locals 3

    .line 31
    new-instance v0, Lcom/netease/mpay/oversea/scan/ScannerOptions;

    iget-object v1, p0, Lcom/netease/mpay/oversea/scan/ScannerOptions$Builder;->scannerExtQrCodeCallback:Lcom/netease/mpay/oversea/scan/ScannerOptions$ScannerExtQrCodeCallback;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/netease/mpay/oversea/scan/ScannerOptions;-><init>(Lcom/netease/mpay/oversea/scan/ScannerOptions$ScannerExtQrCodeCallback;Lcom/netease/mpay/oversea/scan/ScannerOptions$1;)V

    return-object v0
.end method
