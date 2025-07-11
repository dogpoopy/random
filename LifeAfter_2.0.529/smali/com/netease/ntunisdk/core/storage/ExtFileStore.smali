.class public Lcom/netease/ntunisdk/core/storage/ExtFileStore;
.super Lcom/netease/ntunisdk/core/storage/FileStore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netease/ntunisdk/core/storage/FileStore;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected isReady()Z
    .locals 1

    invoke-static {}, Lcom/netease/ntunisdk/core/others/AppInfo;->getInstance()Lcom/netease/ntunisdk/core/others/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/ntunisdk/core/others/AppInfo;->isExtraStorageReady()Z

    move-result v0

    return v0
.end method
