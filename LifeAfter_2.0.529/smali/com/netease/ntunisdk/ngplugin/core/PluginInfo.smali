.class public Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;
.super Ljava/lang/Object;
.source "PluginInfo.java"


# instance fields
.field public mApplication:Landroid/app/Application;

.field public mAssetManager:Landroid/content/res/AssetManager;

.field public mClassLoader:Ljava/lang/ClassLoader;

.field public mPackageInfo:Landroid/content/pm/PackageInfo;

.field public mPluginContext:Lcom/netease/ntunisdk/ngplugin/core/PluginContext;

.field public mResources:Landroid/content/res/Resources;

.field public mSignatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/ntunisdk/ngplugin/core/PluginInfo;->mSignatures:Ljava/util/ArrayList;

    return-void
.end method
