// cheers: https://github.com/ngscheurich/dotfiles/blob/master/.slate.coffee

var sox = "screenOriginX";
var soy = "screenOriginY";
var ssx = "screenSizeX";
var ssy = "screenSizeY";

var step = "3%";
var gap = "20";

function doNudge(opts) {
    return S.op("nudge", opts);
}

function doResize(opts) {
    return S.op("resize", opts);
}

S.config("gridRoundedCornerSize", 2);
S.config("gridCellRoundedCornerSize", 2);

// presets

var pos = {
    origin_x: sox + "+" + gap,
    origin_y: soy + "+" + gap,
    middle_x: sox + "+" + ssx + "/2+" + gap + "/2",
    middle_y: soy + "+" + ssy + "/2+" + gap + "/2"
};

var size = {
    full_width: ssx + "-" + gap + "*2",
    full_height: ssy + "-" + gap + "*2",
    half_width: ssx + "/2-" + gap + "-" + gap + "/2",
    half_height: ssy + "/2-" + gap + "-" + gap + "/2"
};

var presets = {
    fullscreen: {
        x: pos.origin_x,
        y: pos.origin_y,
        width: size.full_width,
        height: size.full_height
    },
    top_half: {
        x: pos.origin_x,
        y: pos.origin_y,
        width: size.full_width,
        height: size.half_height
    },
    bottom_half: {
        x: pos.origin_x,
        y: pos.middle_y,
        width: size.full_width,
        height: size.half_height
    },
    left_half: {
        x: pos.origin_x,
        y: pos.origin_y,
        width: size.half_width,
        height: size.full_height
    },
    right_half: {
        x: pos.middle_x,
        y: pos.origin_y,
        width: size.half_width,
        height: size.full_height
    },
    top_left_quarter: {
        x: pos.origin_x,
        y: pos.origin_y,
        width: size.half_width,
        height: size.half_height
    },
    top_right_quarter: {
        x: pos.middle_x,
        y: pos.origin_y,
        width: size.half_width,
        height: size.half_height
    },
    bottom_left_quarter: {
        x: pos.origin_x,
        y: pos.middle_y,
        width: size.half_width,
        height: size.half_height
    },
    bottom_right_quarter: {
        x: pos.middle_x,
        y: pos.middle_y,
        width: size.half_width,
        height: size.half_height
    }
};

var nudge = {

    left: doNudge({
        x: "-" + step,
        y: "+0"
    }),

    right: doNudge({
        x: "+" + step,
        y: "+0"
    }),

    up: doNudge({
        x: "+0",
        y: "-" + step
    }),

    down: doNudge({
        x: "+0",
        y: "+" + step
    })
}

var resize = {

    left: doResize({
        width: "-" + step,
        height: "+0"
    }),

    right: doResize({
        width: "+" + step,
        height: "+0"
    }),

    up: doResize({
        width: "+0",
        height: "-" + step
    }),

    down: doResize({
        width: "+0",
        height: "+" + step
    })
};

function bindHyper(k) {
    return k + ":ctrl,alt,cmd,shift";
}

function bindMod1(k) {
    return k + ":ctrl,shift";
}

function bindMod2(k) {
    return k + ":ctrl,alt";
}

function bindMod3(k) {
    return k + ":ctrl,cmd";
}

S.bind(bindHyper("r"), S.op("relaunch"));
S.bind(bindHyper("g"), S.op("grid"));

S.bind(bindMod1("o"), S.op("move", presets.fullscreen));

S.bind(bindMod1("h"), S.op("move", presets.left_half));
S.bind(bindMod1("j"), S.op("move", presets.bottom_half));
S.bind(bindMod1("k"), S.op("move", presets.top_half));
S.bind(bindMod1("l"), S.op("move", presets.right_half));

S.bind(bindMod1("y"), S.op("move", presets.top_left_quarter));
S.bind(bindMod1("u"), S.op("move", presets.top_right_quarter));
S.bind(bindMod1("b"), S.op("move", presets.bottom_left_quarter));
S.bind(bindMod1("n"), S.op("move", presets.bottom_right_quarter));

S.bind(bindMod2("h"), nudge.left);
S.bind(bindMod2("j"), nudge.down);
S.bind(bindMod2("k"), nudge.up);
S.bind(bindMod2("l"), nudge.right);

S.on("windowOpened", function(event, win) {

  /*
    switch (win.app().name()) {
        case "Mischief":
        case "Steam":
            return;
    }

    win.move(presets.fullscreen);
    */
});
