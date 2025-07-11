.class Lcom/netease/androidcrashhandler/NTCrashHunterKit$1;
.super Ljava/lang/Object;
.source "NTCrashHunterKit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/androidcrashhandler/NTCrashHunterKit;->setParam(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/androidcrashhandler/NTCrashHunterKit;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/NTCrashHunterKit;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/netease/androidcrashhandler/NTCrashHunterKit$1;->this$0:Lcom/netease/androidcrashhandler/NTCrashHunterKit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 346
    invoke-static {}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->getInstance()Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/anr/messageQueue/StackManager;->enableNativeStackTrace()V

    return-void
.end method
