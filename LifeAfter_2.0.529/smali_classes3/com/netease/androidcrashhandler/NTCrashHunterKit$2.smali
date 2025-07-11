.class Lcom/netease/androidcrashhandler/NTCrashHunterKit$2;
.super Ljava/lang/Object;
.source "NTCrashHunterKit.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/other/OtherCore$CopyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/NTCrashHunterKit;->addFiles(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/NTCrashHunterKit;

.field final synthetic val$tCopyFailFileNameArray:Lorg/json/JSONArray;

.field final synthetic val$tCopySuccessFileNameArray:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/NTCrashHunterKit;Lorg/json/JSONArray;Lorg/json/JSONArray;)V
    .locals 0

    .line 630
    iput-object p1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit$2;->this$0:Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    iput-object p2, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit$2;->val$tCopySuccessFileNameArray:Lorg/json/JSONArray;

    iput-object p3, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit$2;->val$tCopyFailFileNameArray:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 634
    iget-object p1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit$2;->val$tCopySuccessFileNameArray:Lorg/json/JSONArray;

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 636
    :cond_0
    iget-object p1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit$2;->val$tCopyFailFileNameArray:Lorg/json/JSONArray;

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :goto_0
    return-void
.end method
