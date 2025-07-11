.class Lcom/netease/mrzhna/Launcher$1$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/mrzhna/Launcher$1;->onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/netease/mrzhna/Launcher$1;

.field final synthetic val$extensions:Ljava/lang/String;

.field final synthetic val$renderer:Ljava/lang/String;

.field final synthetic val$vendor:Ljava/lang/String;

.field final synthetic val$version:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netease/mrzhna/Launcher$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 360
    iput-object p1, p0, Lcom/netease/mrzhna/Launcher$1$1;->this$1:Lcom/netease/mrzhna/Launcher$1;

    iput-object p2, p0, Lcom/netease/mrzhna/Launcher$1$1;->val$renderer:Ljava/lang/String;

    iput-object p3, p0, Lcom/netease/mrzhna/Launcher$1$1;->val$vendor:Ljava/lang/String;

    iput-object p4, p0, Lcom/netease/mrzhna/Launcher$1$1;->val$version:Ljava/lang/String;

    iput-object p5, p0, Lcom/netease/mrzhna/Launcher$1$1;->val$extensions:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 364
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$1$1;->this$1:Lcom/netease/mrzhna/Launcher$1;

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$200(Lcom/netease/mrzhna/Launcher;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$1$1;->this$1:Lcom/netease/mrzhna/Launcher$1;

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netease/mrzhna/Launcher;->access$202(Lcom/netease/mrzhna/Launcher;Z)Z

    .line 367
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$1$1;->this$1:Lcom/netease/mrzhna/Launcher$1;

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$300(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/PlatformConfigParser;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$1$1;->val$renderer:Ljava/lang/String;

    const-string v3, "GL_RENDERER"

    invoke-virtual {v0, v3, v2}, Lcom/netease/mrzhna/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$1$1;->this$1:Lcom/netease/mrzhna/Launcher$1;

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$300(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/PlatformConfigParser;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$1$1;->val$vendor:Ljava/lang/String;

    const-string v3, "GL_VENDOR"

    invoke-virtual {v0, v3, v2}, Lcom/netease/mrzhna/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$1$1;->this$1:Lcom/netease/mrzhna/Launcher$1;

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$300(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/PlatformConfigParser;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$1$1;->val$version:Ljava/lang/String;

    const-string v3, "GL_VERSION"

    invoke-virtual {v0, v3, v2}, Lcom/netease/mrzhna/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$1$1;->this$1:Lcom/netease/mrzhna/Launcher$1;

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$300(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/PlatformConfigParser;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$1$1;->val$extensions:Ljava/lang/String;

    const-string v3, "GL_EXTENSIONS"

    invoke-virtual {v0, v3, v2}, Lcom/netease/mrzhna/PlatformConfigParser;->addVariable(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    const/4 v3, 0x0

    if-lt v0, v2, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "android.permission.READ_MEDIA_AUDIO"

    aput-object v2, v0, v3

    const-string v2, "android.permission.READ_MEDIA_IMAGES"

    aput-object v2, v0, v1

    const/4 v2, 0x2

    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    aput-object v4, v0, v2

    .line 384
    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$1$1;->this$1:Lcom/netease/mrzhna/Launcher$1;

    iget-object v2, v2, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v2, v0}, Lcom/netease/mrzhna/Launcher;->access$402(Lcom/netease/mrzhna/Launcher;[Ljava/lang/String;)[Ljava/lang/String;

    .line 386
    :cond_0
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$1$1;->this$1:Lcom/netease/mrzhna/Launcher$1;

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v0

    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$1$1;->this$1:Lcom/netease/mrzhna/Launcher$1;

    iget-object v2, v2, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v2}, Lcom/netease/mrzhna/Launcher;->access$400(Lcom/netease/mrzhna/Launcher;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/netease/mrzhna/Launcher;->access$500(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LauncherOversea.onSurfaceCreated unGranted: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "[azx]"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    array-length v0, v0

    if-eqz v0, :cond_2

    .line 400
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$1$1;->this$1:Lcom/netease/mrzhna/Launcher$1;

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    const-string v2, "__p_i_l_file_"

    invoke-virtual {v0, v2, v3}, Lcom/netease/mrzhna/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "__p_i_l_key_"

    .line 401
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 404
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LauncherOversea.onSurfaceCreated cnt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_1

    const-string v0, "LauncherOversea PermissionNotification 2nd"

    .line 418
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$1$1;->this$1:Lcom/netease/mrzhna/Launcher$1;

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$600(Lcom/netease/mrzhna/Launcher;)V

    goto :goto_0

    :cond_1
    const-string v0, "LauncherOversea  goto FIRST_TIME_REQUEST_PERMISSION"

    .line 409
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/netease/mrzhna/Launcher$1$1;->this$1:Lcom/netease/mrzhna/Launcher$1;

    iget-object v2, v2, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    const-class v3, Lcom/netease/mrzhna/PermissionNotification;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "__first_time_request_permission"

    .line 412
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 413
    iget-object v1, p0, Lcom/netease/mrzhna/Launcher$1$1;->this$1:Lcom/netease/mrzhna/Launcher$1;

    iget-object v1, v1, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    const v2, 0x1e240

    invoke-virtual {v1, v0, v2}, Lcom/netease/mrzhna/Launcher;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 425
    :cond_2
    iget-object v0, p0, Lcom/netease/mrzhna/Launcher$1$1;->this$1:Lcom/netease/mrzhna/Launcher$1;

    iget-object v0, v0, Lcom/netease/mrzhna/Launcher$1;->this$0:Lcom/netease/mrzhna/Launcher;

    invoke-static {v0}, Lcom/netease/mrzhna/Launcher;->access$100(Lcom/netease/mrzhna/Launcher;)Lcom/netease/mrzhna/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netease/mrzhna/Launcher;->tryOnLaunch()V

    :cond_3
    :goto_0
    return-void
.end method
