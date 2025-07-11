.class Lcom/netease/ntunisdk/unilogger/utils/ThrowableString$TSTOutputStream;
.super Ljava/io/OutputStream;
.source "ThrowableString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/ntunisdk/unilogger/utils/ThrowableString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TSTOutputStream"
.end annotation


# instance fields
.field private final sb:Ljava/lang/StringBuilder;


# direct methods
.method constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/netease/ntunisdk/unilogger/utils/ThrowableString$TSTOutputStream;->sb:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/netease/ntunisdk/unilogger/utils/ThrowableString$TSTOutputStream;->sb:Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Character;->toChars(I)[C

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    return-void
.end method
