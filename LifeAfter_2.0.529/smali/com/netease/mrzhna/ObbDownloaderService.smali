.class public Lcom/netease/mrzhna/ObbDownloaderService;
.super Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;
.source "ObbDownloaderService.java"


# static fields
.field public static final BASE64_PUBLIC_KEY:Ljava/lang/String; = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsF6FUHnWatviR6Yg4zOU9UWOwcXvqFfNHbyJbaxaumRH2GPjf1aE0WVQOaTGaH9jy4UPcAW/pnx6inNNhPRnxlc507a/RKwVhD4HiF/A2wTx9d0lkUl17nItKBoI0sJeDrPUX/hCPIkZ0jbp1+pg4/5gVpkxIOn3qnzLtwF/6/7xEIOmBDuUgITdpm/gbp6lxLFwCWTNnuzZ4VgVK9t1ZgDqAvCv0QFWDTfOKx8c38vbpZ7qZERp0aotxeS+T8A0plN1cS/abFzamqJhIrPZm/+iTiYhA9a5l1CLDBLu9YXZPQTro2yPBalHkTZs9ZEAxKDQ1JSRpkwU30mJNVYP1QIDAQAB"

.field public static final SALT:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 17
    fill-array-data v0, :array_0

    sput-object v0, Lcom/netease/mrzhna/ObbDownloaderService;->SALT:[B

    return-void

    :array_0
    .array-data 1
        0x28t
        -0x3t
        -0x1ft
        0x6bt
        0x61t
        -0x22t
        -0x60t
        -0x9t
        -0x7et
        -0x62t
        0x7dt
        0x6at
        0x45t
        0x47t
        -0x6et
        0x70t
        -0xdt
        -0x63t
        -0x25t
        0xdt
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/google/android/vending/expansion/downloader/impl/DownloaderService;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlarmReceiverClassName()Ljava/lang/String;
    .locals 1

    .line 31
    const-class v0, Lcom/netease/mrzhna/ObbAlarmReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/lang/String;
    .locals 1

    const-string v0, "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAsF6FUHnWatviR6Yg4zOU9UWOwcXvqFfNHbyJbaxaumRH2GPjf1aE0WVQOaTGaH9jy4UPcAW/pnx6inNNhPRnxlc507a/RKwVhD4HiF/A2wTx9d0lkUl17nItKBoI0sJeDrPUX/hCPIkZ0jbp1+pg4/5gVpkxIOn3qnzLtwF/6/7xEIOmBDuUgITdpm/gbp6lxLFwCWTNnuzZ4VgVK9t1ZgDqAvCv0QFWDTfOKx8c38vbpZ7qZERp0aotxeS+T8A0plN1cS/abFzamqJhIrPZm/+iTiYhA9a5l1CLDBLu9YXZPQTro2yPBalHkTZs9ZEAxKDQ1JSRpkwU30mJNVYP1QIDAQAB"

    return-object v0
.end method

.method public getSALT()[B
    .locals 1

    .line 26
    sget-object v0, Lcom/netease/mrzhna/ObbDownloaderService;->SALT:[B

    return-object v0
.end method
