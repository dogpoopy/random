.class public Lcom/netease/ntunisdk/base/PadEvent;
.super Ljava/lang/Object;
.source "PadEvent.java"


# static fields
.field public static final ACTION_BLUETOOTH_POWEROFF:I = 0xa

.field public static final ACTION_BLUETOOTH_RESETTING:I = 0x7

.field public static final ACTION_BLUETOOTH_UNAUTHORIZED:I = 0x9

.field public static final ACTION_BLUETOOTH_UNKNOWN:I = 0x6

.field public static final ACTION_BLUETOOTH_UNSUPPORTED:I = 0x8

.field public static final ACTION_CONNECTED:I = 0x1

.field public static final ACTION_CONNECTING:I = 0x2

.field public static final ACTION_CONNECT_FAILED:I = 0x3

.field public static final ACTION_DISCONNECTED:I = 0x0

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_GCM_CONNECTED:I = 0x65

.field public static final ACTION_GCM_DISCONNECTED:I = 0x66

.field public static final ACTION_GCM_NO_SUPPORTED:I = 0x67

.field public static final ACTION_GCM_SEARCH_END:I = 0x68

.field public static final ACTION_HID_CONNECTED:I = 0x6f

.field public static final ACTION_HID_DISCONNECTED:I = 0x70

.field public static final ACTION_KEYCODE:I = 0xb

.field public static final ACTION_PRESSURE:I = -0x1

.field public static final ACTION_SCANING:I = 0x4

.field public static final ACTION_SCAN_TIMEOUT:I = 0x5

.field public static final ACTION_SPP_CONNECTED:I = 0x79

.field public static final ACTION_SPP_DISCONNECTED:I = 0x7a

.field public static final ACTION_UP:I = 0x1

.field public static final KEYCODE_BACK:I = 0x4

.field public static final KEYCODE_BUTTON_A:I = 0x60

.field public static final KEYCODE_BUTTON_B:I = 0x61

.field public static final KEYCODE_BUTTON_HELP:I = 0xc6

.field public static final KEYCODE_BUTTON_KEYBOARD:I = 0xc7

.field public static final KEYCODE_BUTTON_L1:I = 0x66

.field public static final KEYCODE_BUTTON_L2:I = 0x68

.field public static final KEYCODE_BUTTON_R1:I = 0x67

.field public static final KEYCODE_BUTTON_R2:I = 0x69

.field public static final KEYCODE_BUTTON_START:I = 0x6c

.field public static final KEYCODE_BUTTON_THUMBL:I = 0x6a

.field public static final KEYCODE_BUTTON_THUMBR:I = 0x6b

.field public static final KEYCODE_BUTTON_X:I = 0x63

.field public static final KEYCODE_BUTTON_Y:I = 0x64

.field public static final KEYCODE_DPAD_DOWN:I = 0x14

.field public static final KEYCODE_DPAD_LEFT:I = 0x15

.field public static final KEYCODE_DPAD_RIGHT:I = 0x16

.field public static final KEYCODE_DPAD_UP:I = 0x13

.field public static final KEYCODE_LEFT_STICK:I = 0xc8

.field public static final KEYCODE_RIGHT_STICK:I = 0xc9


# instance fields
.field private a:J

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:I

.field private g:F

.field private h:F

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(JI)V
    .locals 0

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-wide p1, p0, Lcom/netease/ntunisdk/base/PadEvent;->a:J

    .line 114
    iput p3, p0, Lcom/netease/ntunisdk/base/PadEvent;->b:I

    return-void
.end method

.method public constructor <init>(JIIFF)V
    .locals 0

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-wide p1, p0, Lcom/netease/ntunisdk/base/PadEvent;->a:J

    .line 143
    iput p3, p0, Lcom/netease/ntunisdk/base/PadEvent;->b:I

    .line 144
    iput p4, p0, Lcom/netease/ntunisdk/base/PadEvent;->f:I

    .line 145
    iput p5, p0, Lcom/netease/ntunisdk/base/PadEvent;->g:F

    .line 146
    iput p6, p0, Lcom/netease/ntunisdk/base/PadEvent;->h:F

    return-void
.end method

.method public constructor <init>(JIII)V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput-wide p1, p0, Lcom/netease/ntunisdk/base/PadEvent;->a:J

    .line 158
    iput p3, p0, Lcom/netease/ntunisdk/base/PadEvent;->b:I

    .line 159
    iput p4, p0, Lcom/netease/ntunisdk/base/PadEvent;->i:I

    .line 160
    iput p5, p0, Lcom/netease/ntunisdk/base/PadEvent;->j:I

    return-void
.end method

.method public constructor <init>(JIIIF)V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-wide p1, p0, Lcom/netease/ntunisdk/base/PadEvent;->a:J

    .line 127
    iput p3, p0, Lcom/netease/ntunisdk/base/PadEvent;->b:I

    .line 128
    iput p4, p0, Lcom/netease/ntunisdk/base/PadEvent;->c:I

    .line 129
    iput p5, p0, Lcom/netease/ntunisdk/base/PadEvent;->d:I

    .line 130
    iput p6, p0, Lcom/netease/ntunisdk/base/PadEvent;->e:F

    return-void
.end method


# virtual methods
.method public getAction()I
    .locals 1

    .line 85
    iget v0, p0, Lcom/netease/ntunisdk/base/PadEvent;->d:I

    return v0
.end method

.method public getDeviceId()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/netease/ntunisdk/base/PadEvent;->b:I

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .line 73
    iget-wide v0, p0, Lcom/netease/ntunisdk/base/PadEvent;->a:J

    return-wide v0
.end method

.method public getKeyCode()I
    .locals 1

    .line 81
    iget v0, p0, Lcom/netease/ntunisdk/base/PadEvent;->c:I

    return v0
.end method

.method public getMotionKeyCode()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/netease/ntunisdk/base/PadEvent;->f:I

    return v0
.end method

.method public getPressure()F
    .locals 1

    .line 89
    iget v0, p0, Lcom/netease/ntunisdk/base/PadEvent;->e:F

    return v0
.end method

.method public getState()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/netease/ntunisdk/base/PadEvent;->i:I

    return v0
.end method

.method public getStateAction()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/netease/ntunisdk/base/PadEvent;->j:I

    return v0
.end method

.method public getX()F
    .locals 1

    .line 97
    iget v0, p0, Lcom/netease/ntunisdk/base/PadEvent;->g:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 101
    iget v0, p0, Lcom/netease/ntunisdk/base/PadEvent;->h:F

    return v0
.end method
